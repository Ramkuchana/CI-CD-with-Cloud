install:
		pip install --upgrade pip &&\
					pip install -r requirements.txt

format:
		black *.py


lint:
		pylint --disable=R,C add.py

test:
		python -m pytest -vv --cov=add test_add.py
			
all: install lint test
