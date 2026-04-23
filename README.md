# pyro-spark

PySpark and Jupyter notebook development environment, managed with [uv](https://docs.astral.sh/uv/).

## Stack

- Python 3.12+
- PySpark 4.1
- Delta Lake 4.2
- JupyterLab 4.5

## Setup

```bash
make install   # create .venv and install dependencies
make kernel    # register the Jupyter kernel (run once)
make lab       # launch JupyterLab
```

Select the **PySpark (pyro-spark)** kernel when opening notebooks.

## Commands

| Command | Description |
|---|---|
| `make install` | Create `.venv` and install all dependencies |
| `make kernel` | Register the `PySpark (pyro-spark)` Jupyter kernel |
| `make lab` | Launch JupyterLab |
| `make run nb=<file>.ipynb` | Execute a notebook in-place non-interactively |
| `make clean` | Remove `.venv`, caches, and output data |

## Project structure

```
pyro-spark/
├── notebooks/     # Jupyter notebooks
├── datasets/      # Input data files
├── data/output/   # Generated output (gitignored)
├── pyproject.toml
└── Makefile
```
