# MeshJoin-Streaming-ETL-Data-Warehouse

This project demonstrates the integration of **streaming transactional data** with **master data** using the **Mesh Join algorithm**, which is then loaded into a **Data Warehouse** for analytical processing. The project leverages **ETL (Extract, Transform, Load)** processes to enrich transactional data and store it in a normalized data warehouse schema for OLAP-ready analysis.

---

## Features
- **Mesh Join Integration**: Combines real-time transactional data streams with master data for enriched datasets.
- **ETL Process**: Uses **Extract**, **Transform**, and **Load** processes to prepare and store data.
- **Normalized Data Warehouse**: Data is processed and stored in a structured schema (`tashi_dw`).
- **OLAP-ready SQL Queries**: Predefined queries for in-depth analytical insights on sales, revenue, and more.
- **Real-time Data Processing**: Designed for real-time integration of transactional data with master data.
- **Scalable ETL Pipeline**: Optimized for handling large datasets and real-time processing.

---

## Setup Instructions

### 1. Prerequisites
Ensure you have the following software installed:
- **Java Development Kit (JDK)** (version 8 or higher)
- **MySQL Database** (Make sure MySQL is installed and running)
- **CSV File**: A transactional CSV file for testing data loading and processing.

### 2. Database Setup
1. **Create the master database (`tashi_db`)**:
   Run the provided SQL script to set up the `tashi_db` schema.
   
2. **Insert Sample Data**:
   Insert data into the `customers` and `products` tables in `tashi_db`.

3. **Create the Data Warehouse (`tashi_dw`)**:
   Execute the SQL script for creating the data warehouse schema (`tashi_dw`).

4. **Create Necessary Tables**:
   Ensure the following tables are created in `tashi_dw`:
   - `customers`
   - `products`
   - `orders`
   - `store`
   - `supplier`
   - `transactions`

### 3. Java Code Configuration
1. Open the project in an IDE (e.g., IntelliJ IDEA or Eclipse).
2. Update the database connection settings in the Java code:
   ```java
   String dbUrlTashiDb = "jdbc:mysql://localhost:3306/tashi_db";
   String dbUrlTashiDw = "jdbc:mysql://localhost:3306/tashi_dw";
   String user = "root";
   String password = "your_password";
### 4. Running the Project
Compile and run the `MeshJoin` Java class. The program will:
- **Extract** transactional data from the CSV file.
- **Enrich** the data using master data from `tashi_db`.
- **Load** the enriched data into the `transactions` table in `tashi_dw`.

### 5. Data Warehouse Schema
The `tashi_dw` schema includes the following tables:

- **Customers**: (`customer_id`, `customer_name`, `gender`)
- **Products**: (`productid`, `productName`, `productPrice`)
- **Store**: (`storeID`, `storeName`)
- **Supplier**: (`supplierID`, `supplierName`)
- **Orders**: (`Order_ID`, `Order_Date`)
- **Transactions (Fact Table)**: (`Transaction_ID`, `productid`, `customer_id`, `time_id`, `storeID`, `supplierID`, `Order_ID`, `Sales`, `Quantity_Ordered`)

### 6. OLAP Queries
The repository includes SQL queries for:
- Analyzing **sales trends**.
- Calculating **revenue contributions** by products, stores, and suppliers.
- Identifying **seasonal** and **outlier sales** patterns.

### 7. Learning Outcomes
- **Data Integration**: Real-time enrichment of streaming data.
- **ETL Optimization**: Efficient data processing using Mesh Join.
- **SQL Proficiency**: Writing advanced queries for analytics.
- **Data Warehousing**: Designing and populating normalized schemas.


### 8. Contact
For any questions or suggestions, feel free to contact at [abbasitashfeen7@gmail.com]

