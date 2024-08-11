# Use TensorFlow 2.11 public image as a base image
FROM tensorflow/tensorflow:2.11.0

# define working directory
WORKDIR /app

# copu requirements.txt for required libraries
COPY requirements.txt .

# install dependencies of Python
RUN pip install --no-cache-dir -r requirements.txt

# copy project code to container
COPY . .

# Assign default comand within container
CMD ["/bin/bash"]
