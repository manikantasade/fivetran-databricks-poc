from pyspark.sql.functions import sum

customer_sales = (
    customer_orders
    .groupBy("customer_name")
    .agg(
        sum("order_amount")
        .alias("total_sales")
    )
)

display(customer_sales)

