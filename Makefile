SHELL := bash

all: execute export

execute:
	cd $(which) && jupyter nbconvert --to notebook --execute --inplace $(args) *.ipynb

export:
	cd $(which) && jupyter nbconvert --no-prompt --to html $(args) *.ipynb

gitignore:
	curl -L https://github.com/github/gitignore/raw/master/{Python,Global/{Linux,Windows,macOS,Vim,SublimeText,VisualStudioCode}}.gitignore > .gitignore
