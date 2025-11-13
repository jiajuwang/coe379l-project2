# Use official Python runtime as base image (x86_64 architecture)
FROM python:3.10-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install only necessary dependencies for production
RUN pip install --no-cache-dir flask tensorflow pillow numpy

# Copy model and application code
COPY model.keras .
COPY api.py .

# Expose port 5000
EXPOSE 5000

# Set environment variables
ENV HOST=0.0.0.0
ENV PORT=5000

# Run the application
CMD ["python", "api.py"]
