# Use the remotepixel/amazonlinux-gdal image as the base
FROM remotepixel/amazonlinux-gdal:latest

# Update the system
RUN yum -y update

# Install python3 and pip
# RUN yum -y install python3.10

# showed Python 3.7.3
RUN python3 --version
RUN pip3 --version

# Upgrade pip
RUN pip3 install --upgrade pip

# Install rasterio
RUN pip3 install rasterio

# Copy the main.py file into the Docker image
COPY main.py ./

# You can overwrite command in `serverless.yml` template
CMD ["main.lambda_handler"]
