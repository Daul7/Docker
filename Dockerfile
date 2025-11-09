# Use Python base image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy all files from the current folder into the container
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Set the command to run the Django server (note the path to manage.py)
CMD ["python", "projectsite/manage.py", "runserver", "0.0.0.0:8000"]
