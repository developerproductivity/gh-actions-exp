# Use the official Python image from the Docker Hub
FROM python:3.13-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Default command to run the application (adjust as needed)
CMD ["python", "main.py"]
