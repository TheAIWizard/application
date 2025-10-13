FROM ubuntu:22.04

# Install Python
RUN chmod +x app/run.sh

# Install project dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src ./src
COPY app ./app
COPY train.py .

CMD [".", "./app/run.sh"]
