FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY ./requirements.txt /app/requirements.txt

# Copy the rest of the application code
COPY . /app

#install the dependecncies and packages of the requirements.txt file 
RUN pip install -r requirements.txt

#copy all content from the local file  to image

COPY . /app

# Run the app

ENTRYPOINT [ "flask", "run" ]
CMD ["--host=0.0.0.0", "--port=5000"]