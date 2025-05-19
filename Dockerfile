FROM python:3.9-slim
WORKDIR /app
COPY app/requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY app/ .
CMD ["gunicorn", "-b", "0.0.0.0:5000", "main:app"]
