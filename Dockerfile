FROM ubuntu:22.04

# Install Python
RUN apt-get -y update && \
    apt-get install -y python3-pip

# Install project dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app ./app
COPY train.py .
COPY model.joblib .
RUN chmod +x app/run.sh

COPY src ./src
COPY train.py .

CMD ["bash", "-c", "./app/run.sh"]
