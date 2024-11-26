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
- **CSV Files**: The following CSV files for testing data loading and processing:
  - **`transactions.csv`**
  - **`products_data.csv`**
  - **`customers_data.csv`**

### 2. Database Setup
1. **Create the master database (`tashi_db`)**:
   Run the provided SQL script to set up the `tashi_db` schema.
   
2. **Insert Sample Data**:
   Insert data into the `customers` and `products` tables in `tashi_db`.

3. **Create the Data Warehouse (`tashi_dw`)**:
   Execute the SQL script for creating the data warehouse schema (`tashi_dw`).
<img width="950" alt="database" src="https://github.com/user-attachments/assets/49675567-70f0-4a0b-9322-0543b2e93cfe">

### 3. Java Code Configuration
1. Open the project in an IDE (e.g., IntelliJ IDEA or Eclipse).
2. Update the database connection settings in the Java code:
   ```java
   String dbUrlTashiDb = "jdbc:mysql://localhost:3306/tashi_db";
   String dbUrlTashiDw = "jdbc:mysql://localhost:3306/tashi_dw";
   String user = "root";
   String password = "your_password";
3. Update the path to the transactional data CSV file in the code:
   ```java
   String csvFilePath = "C:/Users/USER/Downloads/transactions.csv";

## Running the Project

Follow the steps below to run the project and create the Data Warehouse:

1. **Create the Data Base & Warehouse**:
   - Run `createDB.sql` file in **MySQL Workbench** to set up the database (`tashi_db`) & `createDWH.sql` file in **MySQL Workbench** to set up the data warehouse (`tashi_dw`).

2. **Open Eclipse IDE**:
   - Launch **Eclipse IDE**.

3. **Import the Project**:
   - In Eclipse, go to **File** > **Open Projects from File System**.
   - Use the directory option to select and import the project folder.

4. **Complete the Project Import**:
   - Click on **Finish**. The project will now be loaded into Eclipse.

5. **Configure the Build Path**:
   - Right-click on the project name in the **Project Explorer**.
   - Select **Build Path** > **Configure Build Path**.

6. **Add External JAR**:
   - In the **Libraries** section, click on **Classpath**.
   - Click on **Add External JARs** and select the `mysql-connector-java-8.0.27.jar` file.

7. **Apply Changes**:
   - Click on **Apply and Finish** to save the changes.

8. **Locate `MeshJoin.java`**:
   - In the **src** folder, search for the `MeshJoin.java` file and select **Run**.

9. **Start the Process**:
   - Press **Enter** to begin the process. Wait for the message: **"MESHJOIN completed successfully"** to confirm completion.

10. **Verify Data Warehouse Creation**:
   - Once the process completes, the **Data Warehouse** using the extended **Mesh Join** algorithm will be created successfully.
<img width="950" alt="2" src="https://github.com/user-attachments/assets/9639445e-c472-4cfe-bcd9-d1883eae0d53">
---

## Data Warehouse Schema

The `tashi_dw` schema includes the following tables:

- **Customers**: (`customer_id`, `customer_name`, `gender`)
- **Products**: (`productid`, `productName`, `productPrice`)
- **Store**: (`storeID`, `storeName`)
- **Supplier**: (`supplierID`, `supplierName`)
- **Orders**: (`Order_ID`, `Order_Date`)
- **Transactions (Fact Table)**: (`Transaction_ID`, `productid`, `customer_id`, `time_id`, `storeID`, `supplierID`, `Order_ID`, `Sales`, `Quantity_Ordered`)
<img width="950" alt="Schema" src="https://github.com/user-attachments/assets/ddcf9687-ee68-491a-a2bd-f646546a7195">

---

## OLAP Queries

The repository includes SQL queries for:
- Analyzing **sales trends**.
- Calculating **revenue contributions** by products, stores, and suppliers.
- Identifying **seasonal** and **outlier sales** patterns.

---

## Learning Outcomes

- **Data Integration**: Real-time enrichment of streaming data.
- **ETL Optimization**: Efficient data processing using Mesh Join.
- **SQL Proficiency**: Writing advanced queries for analytics.
- **Data Warehousing**: Designing and populating normalized schemas.

---

## Contributing

- Tashfeen Abbasi (abbasitashfeen7@gmail.com)

