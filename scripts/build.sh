#!/bin/bash

[ -d .venv ] || python -m venv .venv
source .venv/bin/activate
pip install sssimp
python -m sssimp
