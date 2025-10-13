#/bin/bash

python train.py
uvicorn app.api:app
