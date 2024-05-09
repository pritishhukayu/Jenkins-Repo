# Use an official base image (e.g., Ubuntu, Alpine, etc.)
FROM ubuntu:20.04

# Set environment variables (if needed)
ENV MY_VAR=my_value

# Install any necessary packages or dependencies
RUN apt-get update && apt-get install -y \
    package1 \
    package2

# Clone repo B locally (using git)
RUN apt-get install -y git
RUN git clone https://github.com/pritishhukayu/jenkinstest.git /app

# Set the working directory
WORKDIR /app

# Define the command to run when the container starts
CMD ["echo", "Hello from Docker!"]
