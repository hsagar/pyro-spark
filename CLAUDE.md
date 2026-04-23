# CLAUDE.md

## What this repo is

A PySpark and Jupyter notebook development environment managed with [uv](https://docs.astral.sh/uv/). Python 3.12+, PySpark 4.1, and delta-spark 4.2.

## Environment setup

```bash
make install    # create .venv and install all dependencies
make kernel     # register the "PySpark (pyro-spark)" Jupyter kernel (run once)
```

## Running notebooks

```bash
make lab                     # launch JupyterLab (select the "PySpark (pyro-spark)" kernel)
make run nb=my_notebook.ipynb  # execute a notebook in-place non-interactively
```

## Project structure

- `notebooks/` — Jupyter notebooks
- `datasets/` — input data files
- `data/output/` — notebook-generated output (gitignored)

## Delta Lake

When using Delta Lake, configure the SparkSession with the Delta extensions:

```python
from delta import configure_spark_with_delta_pip
from pyspark.sql import SparkSession

spark = configure_spark_with_delta_pip(
    SparkSession.builder
    .appName("MyApp")
    .master("local[*]")
    .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension")
    .config("spark.sql.catalog.spark_catalog", "org.apache.spark.sql.delta.catalog.DeltaCatalog")
).getOrCreate()
```
