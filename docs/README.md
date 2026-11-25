**Fivetran Databricks POC (RDBMS--> Fivetran --> Databricks POC)**

Source : SQL Server Express   
Ingestion: Fivetran
Processing: PySpark
Future: DBT Terraform CI/CD

**Environment Promotion Strategy**

Notebook code remains unchanged.

DEV uses: config/dev.json

SIT uses: config/sit.json

UAT uses: config/uat.json

Only configuration files change.
