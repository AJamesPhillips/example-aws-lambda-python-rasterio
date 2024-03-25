
# Demo AWS Lambda with Python rasterio package

## Setup

    python3.10 -m venv venv
    . venv/bin/activate
    pip install poetry
    poetry install --no-root
    npm install

## Local testing

This passes without error

    serverless invoke local --function hello

## Deploy

Deploying to AWS:

    serverless deploy --verbose --stage staging --region eu-west-1

This fails with the error `No module named 'rasterio._version'`

    serverless invoke --function hello --stage staging --region eu-west-1
