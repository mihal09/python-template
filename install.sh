#!/usr/bin/env zsh
set -e

pyenv versions | grep "3\.9\.13" || pyenv install 3.9.13
eval "$(pyenv init -)"
pyenv shell 3.9.13

python -V 2>&1 | grep "3\.9" || echo "Needs Python 3.9" ||
pip -V || echo "Needs pip" || false

python -m venv .venv

source .venv/bin/activate
pip install -r resources/requirements.txt