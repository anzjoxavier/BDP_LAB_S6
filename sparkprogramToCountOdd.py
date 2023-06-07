from pyspark.sql import SparkSession
from pyspark.sql.functions import udf
from pyspark.sql.types import BooleanType

spark = SparkSession.builder.appName("CountofEvenAndOdd").getOrCreate()
n=int(input("Enter the range:"))
data = range(1,n+1)
df = spark.createDataFrame(data, "integer").toDF("number")

def is_odd(number):
    return number % 2 == 1

is_odd_udf = udf(is_odd, BooleanType())

df = df.withColumn("is_odd", is_odd_udf(df["number"]))
odd_count = df.filter(df["is_odd"]).count()
even_count = df.filter(~df["is_odd"]).count()

print("Number of odd numbers:", odd_count)
print("Number of even numbers:", even_count)

spark.stop()