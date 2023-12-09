# NYC_MV-Collisions-Dimensional-Modeling-and-Visualization

This project utilizes the NYC Motor Vehicles Collision dataset, consisting of three tables (MV_Vehicles, MV_Persons, and MV_Collisions). The data is sourced from Google Cloud Platform's BigQuery using an access key. The project involves a comprehensive three-part process:

![image](https://github.com/shubhamidekar/NYC_MV-Collisions-Dimensional-Modeling-and-Visualization/assets/114885651/f63dc26a-3537-4a9a-b9ca-868af9692c64)

### Part 1: Data Profiling and Staging
- Data profiling was conducted using Alteryx's basic data profile component, involving careful data validation and in-depth profiling. The objective was to understand the data thoroughly before applying transformations.
- The dataset was loaded into SQL Server as stage tables, laying the foundation for subsequent transformations.

### Part 2: Data Integration and Transformation
- Various data integration tasks were performed using Talend, including data cleaning, handling data types, managing null values, converting date formats, and allocating surrogate keys for dimensions.
- The result includes the creation of 5 facts, 23 dimensions, and an error handling table.
- Error handling table captures the bad data of people's age containing values below 0 and above 100.

### Part 3: Data Visualization with Power BI and Tableau
- Visualization of insights from the NYC collisions dataset was carried out using Power BI and Tableau.
- Key metrics such as complaints, injuries, and other relevant indicators were presented to provide accurate insights into the number of collisions, fatalities, injuries, etc.
