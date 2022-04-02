include .devcontainer/Makefile

shell: docker-shell

install:
	pip install -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cu113
	pip install --editable lib/

run:
	jupyter execute notebooks/main.ipynb

clean:
	git clean -xd --interactive

freeze:
	pip freeze --exclude-editable -r requirements.txt > requirements.txt

lint:
	flake8 --extend-exclude=.venv
	mypy --ignore-missing-imports .
	isort --check --diff --profile=black .
	docformatter -r --check .
	black --check .

format:
	isort --profile=black .
	docformatter -r --in-place .
	black .
	make lint

test:
	pytest --cov=lib/src --cov-branch --cov-fail-under=50
