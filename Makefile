clean:
	@find . -name "*.pyc" -delete

deps:
	@echo "Installing deps"
	@pip install -r test-requirements.txt

test: clean deps
	@python -m unittest discover
	@flake8 --max-line-length=115 .
