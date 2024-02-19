FROM python:3.11
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN python -m pip install \
        numpy \
        fastapi

CMD [ "python", "./server.py" ]