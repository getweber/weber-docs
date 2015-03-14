default: doc 

env: .env/.up-to-date

.env/.up-to-date: pip_requirements.txt Makefile
	python -m virtualenv .env
	.env/bin/pip install -r ./pip_requirements.txt
	touch .env/.up-to-date

doc: env
	.env/bin/sphinx-build -a -E . build

.PHONY: doc

