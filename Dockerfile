FROM python:3.12
WORKDIR /app
COPY . /app

RUN pip install poetry
RUN poetry install

EXPOSE 8000

CMD [ "poetry","run","python","akp_python_cicd/app.py" ]
