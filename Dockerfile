FROM python:3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
COPY env.sample .env

# install python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

COPY . .

CMD ["python", "run.py"]
# CMD ["gunicorn", "--config", "gunicorn-cfg.py", "run:app"]
