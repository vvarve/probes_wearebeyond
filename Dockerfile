FROM python:3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
COPY env.sample .env

# install python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Define la variable de entorno que indica el puerto
ENV PORT 8080

# Expone el puerto que utiliza la aplicación
EXPOSE 8080

COPY . .

# gunicorn
# CMD ["gunicorn", "--config", "gunicorn-cfg.py", "run:app"]
