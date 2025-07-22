FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Set work directory
WORKDIR /app

# Copy requirements and install

# Copy requirements and upgrade pip, then install dependencies
COPY requirements.txt ./
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Expose default port
EXPOSE 8080

# Startup command
CMD ["autogenstudio", "ui", "--port", "8080", "--host", "0.0.0.0"]
