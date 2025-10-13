FROM ubuntu:22.04

# Install project dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src ./src
COPY app ./app
COPY train.py .

# Give permission to run.sh
RUN chmod +x app/run.sh

CMD [".", "./app/run.sh"]
