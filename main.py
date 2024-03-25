import json

def lambda_handler(event, context):
    rasterio_version = ""
    exception = ""
    try:
        import rasterio
        rasterio_version = rasterio.__version__
        print(f'rasterio version: {rasterio_version}')
    except Exception as e:
        exception = str(e)
        print(f'Error importing rasterio: {e}')

    body = {
        "rasterio version": rasterio_version,
        "exception": exception,
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }
    return response
