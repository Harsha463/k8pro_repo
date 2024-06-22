FROM python:3.9

# Set the working directory
WORKDIR /code

# Copy the requirements file and install the dependencies
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the application code and templates
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html

# Specify the command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

