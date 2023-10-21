install:
	python3 -m venv ~/.tanttn-udacity &&\
		source ~/.tanttn-udacity/bin/activate
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

lint:
	pylint --disable=R,C hello.py

all: install lint test