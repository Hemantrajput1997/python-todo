# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory in the container
WORKDIR /todoApp

# Install any necessary dependencies
RUN apt update && apt install python3-pip -y
RUN pip install django
#RUN python3 manage.py makemigrations
#RUN python3 manage.py migrate
# Copy the rest of the application code into the container
COPY . .

# Expose port 8000 (Django's default port)
#EXPOSE 8000

# Set environment variable
#ENV PYTHONUNBUFFERED=1
CMD RUN python3 manage.py migrate
# Run the Django development server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
