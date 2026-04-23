.PHONY: install lab kernel run clean

install:
	uv sync

lab:
	JUPYTER_CONFIG_DIR=$(PWD)/jupyter uv run jupyter lab

kernel:
	uv run jupyter kernelspec install $(PWD)/kernel --name pyro-spark --sys-prefix

run:
	@if [ -z "$(nb)" ]; then echo "Usage: make run nb=<notebook>.ipynb"; exit 1; fi
	uv run jupyter nbconvert --to notebook --execute --inplace $(nb)

clean:
	rm -rf .venv __pycache__ .ipynb_checkpoints data/output
