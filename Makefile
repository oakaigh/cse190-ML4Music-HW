.PHONY: all

execute:
	cd $(which) && jupyter nbconvert --to notebook --execute --inplace $(args) *.ipynb

export:
	cd $(which) && jupyter nbconvert --no-prompt --to html $(args) *.ipynb

all: execute export
