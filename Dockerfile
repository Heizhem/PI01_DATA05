FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

COPY ./requirements.txt /app/requirements.txt

COPY ./app /app

WORKDIR /app/app

RUN pip install -r /app/requirements.txt
EXPOSE 8000
CMD [ "uvicorn", "main:data_src_app", "--host", "0.0.0.0"]