from pyspark.sql import SparkSession

spark = (
    SparkSession.builder
    .appName("pyro-spark")
    .master("local[*]")
    .config("spark.driver.memory", "2g")
    .getOrCreate()
)

spark.sparkContext.setLogLevel("WARN")
sc = spark.sparkContext
