/* 
Tashfeen Abbasi
i222041
DS-D 
*/
import java.sql.*;
import java.time.LocalDate;
import java.io.*;
import java.util.*;

//```````````````````````````````````````````````````````````````````````````````````````` MESH JOIN  ```````````````````````````````````````````````````````````````````````````````````````
public class MeshJoin 
{
    public static void main(String[] args) 
    {
        try 
        {
            //```````````````````````````````````````````````````````````````````````````````````````` Database Credentials ```````````````````````````````````````````````````````````````````````````````````````
            String dbUrlTashiDb = "jdbc:mysql://localhost:3306/tashi_db";
            String dbUrlTashiDw = "jdbc:mysql://localhost:3306/tashi_dw";
            String user = "root";
            String password = "12345";

            //``````````````````````````````````````````````````````````````````````````````````````` Database connections ```````````````````````````````````````````````````````````````````````````````````````
            Connection masterDbConnection = DriverManager.getConnection(dbUrlTashiDb, user, password);
            Connection warehouseDbConnection = DriverManager.getConnection(dbUrlTashiDw, user, password);
            String csvFilePath = "C:/Users/USER/Downloads/transactions.csv/";
            BufferedReader br = new BufferedReader(new FileReader(csvFilePath));
            List<String[]> transactionalData = new ArrayList<>();
            String line;
            br.readLine();


            //```````````````````````````````````````````````````````````````````````````````````````````` Reading CSV ```````````````````````````````````````````````````````````````````````````````````````````
            while ((line = br.readLine()) != null) 
            {
                String[] values = line.split(",");
                transactionalData.add(values);
            }
            br.close();

            List<Map<String, Object>> masterCustomers = fetchMasterData(masterDbConnection, "customers");
            List<Map<String, Object>> masterProducts = fetchMasterData(masterDbConnection, "products");

            //`````````````````````````````````````````````````````````````````````````````````````````````` MeshJoin ````````````````````````````````````````````````````````````````````````````````````````````
            Queue<String[]> streamBuffer = new LinkedList<>(transactionalData);

            while (!streamBuffer.isEmpty()) 
            {
                String[] transaction = streamBuffer.poll(); 
                Map<String, Object> enrichedData = new HashMap<>();
                int productId = Integer.parseInt(transaction[2]);
                enrichedData.put("productid", productId);

                for (Map<String, Object> product : masterProducts) 
                {
                    if (productId == (int) product.get("productid")) 
                    {
                        enrichedData.put("product_name", product.get("productName"));
                        enrichedData.put("product_price", product.get("productPrice"));
                        enrichedData.put("supplier_id", product.get("supplierID"));
                        enrichedData.put("supplier_name", product.get("supplierName"));
                        enrichedData.put("store_id", product.get("storeID"));
                        enrichedData.put("store_name", product.get("storeName"));
                        break;
                    }
                }

                int customerId = Integer.parseInt(transaction[4]);
                enrichedData.put("customer_id", customerId);
                for (Map<String, Object> customer : masterCustomers) 
                {
                    if (customerId == (int) customer.get("customer_id")) 
                    {
                        enrichedData.put("customer_name", customer.get("customer_name"));
                        enrichedData.put("gender", customer.get("gender"));
                        break;
                    }
                }



                Integer timeId = Integer.parseInt(transaction[5]); 
                enrichedData.put("time_id", timeId);
                
                //``````````````````````````````````````````````````````````````````````````````````````````````````` Sales ``````````````````````````````````````````````````````````````````````````````````````````
                double price = (double) enrichedData.get("product_price");
                int quantity = Integer.parseInt(transaction[3]);
                enrichedData.put("sales", price * quantity);

                //```````````````````````````````````````````````````````````````````````````````````````````````` Transactional `````````````````````````````````````````````````````````````````````````````````````
                enrichedData.put("order_id", Integer.parseInt(transaction[0]));
                enrichedData.put("quantity_ordered", quantity);
                enrichedData.put("order_date", transaction[1]);
                loadIntoWarehouse(warehouseDbConnection, enrichedData);
            }




            //`````````````````````````````````````````````````````````````````````````````````````````````````` Closing Connections ``````````````````````````````````````````````````````````````````````````````````
            masterDbConnection.close();
            warehouseDbConnection.close();
            System.out.println("MESHJOIN completed successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //````````````````````````````````````````````````````````````````````````````````````````` Master Data Fetching `````````````````````````````````````````````````````````````````````````````````````` 
    private static List<Map<String, Object>> fetchMasterData(Connection conn, String tableName) throws SQLException 
    {
        List<Map<String, Object>> masterData = new ArrayList<>();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM " + tableName);

        while (rs.next()) 
        {
            Map<String, Object> row = new HashMap<>();
            ResultSetMetaData metaData = rs.getMetaData();
            for (int i = 1; i <= metaData.getColumnCount(); i++)
            {
                row.put(metaData.getColumnName(i), rs.getObject(i));
            }
            masterData.add(row);
        }
        return masterData;
    }

    //```````````````````````````````````````````````````````````````````````````````````````` Time Exist  ```````````````````````````````````````````````````````````````````````````````````````
    private static boolean doesTimeExist(Connection conn, int timeId) throws SQLException 
    {
        String checkTimeSQL = "SELECT COUNT(*) FROM time WHERE Time_ID = ?";
        PreparedStatement checkStmt = conn.prepareStatement(checkTimeSQL);
        checkStmt.setInt(1, timeId);
        ResultSet rs = checkStmt.executeQuery();
        rs.next();
        return rs.getInt(1) > 0;
    }

    //``````````````````````````````````````````````````````````````````````````````````` Insert Into Warehouse ```````````````````````````````````````````````````````````````````````````````````````
    private static void loadIntoWarehouse(Connection conn, Map<String, Object> enrichedData) throws SQLException 
    {
        try 
        {
            
            String insertOrderSQL = "INSERT IGNORE INTO orders (Order_ID, Order_Date) VALUES (?, ?)";
            PreparedStatement orderStmt = conn.prepareStatement(insertOrderSQL);
            int orderId = ((Number) enrichedData.get("order_id")).intValue();
            orderStmt.setInt(1, orderId);
            
            String orderDate = (String) enrichedData.get("order_date");
            if (orderDate != null) 
            {
                orderStmt.setTimestamp(2, Timestamp.valueOf(orderDate));
            } 
            
            else 
            {
                orderStmt.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
            }
            orderStmt.executeUpdate();

            String insertProductSQL = "INSERT IGNORE INTO products (productid, productName, productPrice) VALUES (?, ?, ?)";
            PreparedStatement productStmt = conn.prepareStatement(insertProductSQL);
            productStmt.setInt(1, ((Number) enrichedData.get("productid")).intValue());
            productStmt.setString(2, (String) enrichedData.get("product_name"));
            productStmt.setDouble(3, ((Number) enrichedData.get("product_price")).doubleValue());
            productStmt.executeUpdate();

            if (enrichedData.get("supplier_id") != null) 
            {
                String insertSupplierSQL = "INSERT IGNORE INTO supplier (supplierID, supplierName) VALUES (?, ?)";
                PreparedStatement supplierStmt = conn.prepareStatement(insertSupplierSQL);
                supplierStmt.setInt(1, ((Number) enrichedData.get("supplier_id")).intValue());
                supplierStmt.setString(2, (String) enrichedData.get("supplier_name"));
                supplierStmt.executeUpdate();
            }

            if (enrichedData.get("store_id") != null) 
            {
                int storeId = ((Number) enrichedData.get("store_id")).intValue();
                if (!doesStoreExist(conn, storeId)) 
                {
                    String insertStoreSQL = "INSERT INTO store (storeID, storeName) VALUES (?, ?)";
                    PreparedStatement storeStmt = conn.prepareStatement(insertStoreSQL);
                    storeStmt.setInt(1, storeId);
                    storeStmt.setString(2, (String) enrichedData.get("store_name"));
                    storeStmt.executeUpdate();
                }
            }

            if (enrichedData.get("customer_id") != null) 
            {
                int customerId = ((Number) enrichedData.get("customer_id")).intValue();
                if (!doesCustomerExist(conn, customerId)) 
                {
                    String insertCustomerSQL = "INSERT INTO customers (customer_id, customer_name, gender) VALUES (?, ?, ?)";
                    PreparedStatement customerStmt = conn.prepareStatement(insertCustomerSQL);
                    customerStmt.setInt(1, customerId);
                    customerStmt.setString(2, (String) enrichedData.get("customer_name"));
                    customerStmt.setString(3, (String) enrichedData.get("gender"));
                    customerStmt.executeUpdate();
                }
            }

            String insertTransactionSQL = "INSERT INTO transactions (Transaction_ID, productid, customer_id, Time_ID, storeID, supplierID, Order_ID, Sales, Quantity_Ordered) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement transactionStmt = conn.prepareStatement(insertTransactionSQL);
            
            transactionStmt.setInt(1, orderId); // Using Order_ID as Transaction_ID
            transactionStmt.setInt(2, ((Number) enrichedData.get("productid")).intValue());
            transactionStmt.setInt(3, ((Number) enrichedData.get("customer_id")).intValue());
            transactionStmt.setInt(4, ((Number) enrichedData.get("time_id")).intValue());
            
            if (enrichedData.get("store_id") != null) 
            {
                transactionStmt.setInt(5, ((Number) enrichedData.get("store_id")).intValue());
            } 
            
            else 
            {
                transactionStmt.setNull(5, Types.INTEGER);
            }
            
            if (enrichedData.get("supplier_id") != null) 
            {
                transactionStmt.setInt(6, ((Number) enrichedData.get("supplier_id")).intValue());
            } 
            else 
            {
                transactionStmt.setNull(6, Types.INTEGER);
            }
            
            transactionStmt.setInt(7, orderId);
            transactionStmt.setDouble(8, ((Number) enrichedData.get("sales")).doubleValue());
            transactionStmt.setInt(9, ((Number) enrichedData.get("quantity_ordered")).intValue());
            
            transactionStmt.executeUpdate();
        } 
        catch (SQLException e) 
        {
            System.err.println("Error in loadIntoWarehouse: " + e.getMessage());
            throw e;
        }
    }

    //``````````````````````````````````````````````````````````````````````````````````` Store Existance ```````````````````````````````````````````````````````````````````````````````````````
    private static boolean doesStoreExist(Connection conn, int storeId) throws SQLException
     {
        String checkStoreSQL = "SELECT COUNT(*) FROM store WHERE storeID = ?";
        try (PreparedStatement checkStmt = conn.prepareStatement(checkStoreSQL))
         {
            checkStmt.setInt(1, storeId);
            try (ResultSet rs = checkStmt.executeQuery()) 
            {
                rs.next();
                return rs.getInt(1) > 0;
            }
        }
    }

    //``````````````````````````````````````````````````````````````````````````````````` Insert Store ```````````````````````````````````````````````````````````````````````````````````````
    private static void insertStore(Connection conn, Map<String, Object> enrichedData) throws SQLException 
    {
        String insertStoreSQL = "INSERT INTO store (storeID, storeName) VALUES (?, ?)";
        PreparedStatement storeStmt = conn.prepareStatement(insertStoreSQL);

        storeStmt.setInt(1, (int) enrichedData.get("store_id"));
        storeStmt.setString(2, (String) enrichedData.get("store_name"));
        storeStmt.executeUpdate();
    }

    private static boolean doesCustomerExist(Connection conn, int customerId) throws SQLException
     {
        String checkCustomerSQL = "SELECT COUNT(*) FROM customers WHERE customer_id = ?";
        try (PreparedStatement checkStmt = conn.prepareStatement(checkCustomerSQL)) 
        {
            checkStmt.setInt(1, customerId);

            try (ResultSet rs = checkStmt.executeQuery()) 
            {
                rs.next();
                return rs.getInt(1) > 0;
            }
        }
    }
}