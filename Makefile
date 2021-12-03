setup:
	python3 -m venv ~/.myrepo

install:
	pip install --upgrade pip &&\
		pip install -r requirments.txt
test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipnyb
	
lint:
	pylint --disable=R,C myrepolib cli web

all: install lint  test