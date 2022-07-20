FROM python:3.7.3-stretch
## Step 1:
# Create a working directory
WORKDIR /web

## Step 2:
# Copy source code to working directory
COPY requirements.txt app.py  /web/
COPY templates /web/templates

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir  --upgrade pip &&\
    pip install --no-cache-dir  --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

export AWS_ACCESS_KEY_ID=ASIA6GTGI67TIPFS2PMS
export AWS_SECRET_ACCESS_KEY=+3YBt0GH5nY2+3DBryzgkWe9M0RC1tlcDFy5BN6s
export AWS_DEFAULT_REGION=us-west-2