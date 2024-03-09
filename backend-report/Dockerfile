FROM gitlab.praktikum-services.ru:5050/std-018-012/sausage-store/python:3.9.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

ENTRYPOINT ["python"]
CMD ["app.py"]

EXPOSE 8080