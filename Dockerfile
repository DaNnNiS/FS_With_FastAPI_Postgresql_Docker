FROM python:3.11
COPY requirements.txt

RUN pip3.11 install -r requirements.txt

CMD [ "python", "./server.py" ]