install:
	python -m venv .venv
	.venv/bin/pip install -r requirements.txt --extra-index-url https://download.pytorch.org/whl/cu113
	.venv/bin/pip install --editable lib/

clean:
	rm -r .venv

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
