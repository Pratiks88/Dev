# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose port 5000 for Flask
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
