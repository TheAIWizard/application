#/bin/bash

python3 train.py
uvicorn app.api:app
