FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:

COPY app.py /app/
COPY requirements.txt /app
COPY model_data /app/model_data

## Step 3:
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
RUN apt-get update
RUN apt-get install lsof
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]