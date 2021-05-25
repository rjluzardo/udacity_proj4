FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:

COPY app.py /app/
COPY requirements.txt /app
COPY model_data /app/model_data
RUN touch docker_out.txt

## Step 3:
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]