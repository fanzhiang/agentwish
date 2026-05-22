FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY index.html .
COPY manifest.json .
COPY skill.md .

VOLUME /data

ENV DATABASE_PATH=/data/agentwish.db

EXPOSE 5000

CMD ["python", "app.py"]
