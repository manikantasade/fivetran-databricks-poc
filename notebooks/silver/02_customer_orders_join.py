customers = spark.table(
    "data_platform.dbo.customers"
)

orders = spark.table(
    "data_platform.dbo.orders"
)

customer_orders = customers.join(
    orders,
    "customer_id"
)

display(customer_orders)
