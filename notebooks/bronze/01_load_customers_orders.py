import json

config = json.load(
    open("/Workspace/config/dev.json")
)

customers = spark.table(
    "data_platform.dbo.customers"
)

orders = spark.table(
    "data_platform.dbo.orders"
)

display(customers)
display(orders)
