FROM python:3.10
WORKDIR /auth
COPY . /auth
RUN apt-get update
RUN apt-get -y install libgl1-mesa-glx
RUN pip install -r requirements.txt
EXPOSE 8088
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8088"]

