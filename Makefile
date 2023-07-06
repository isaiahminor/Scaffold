##Installs latest version of pip. Grabs necessary packages.
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
##Standard code		
format:
	black *.py
	
##Disables Recommended and Config warnings. Only receive warning and error messages.
lint:
	pylint --disable=R,C hello.py

##Verbose output and coverage for test code.
test:
	python -m pytest -vv --cov=hello test_hello.py