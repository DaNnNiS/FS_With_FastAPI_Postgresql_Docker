FROM python:3.11
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]


##ENV VIRTUAL_ENV "/venv"
#RUN python -m venv $VIRTUAL_ENV
#ENV PATH "$VIRTUAL_ENV/bin:$PATH"

#RUN python -m pip install \
#        numpy \
#        fastapi

#CMD [ "python", "./server.py" ]