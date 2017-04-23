FROM python:3.6

RUN useradd -d /code/ -m app
WORKDIR /code

ADD requirements.txt /code/
RUN pip install -r requirements.txt

ADD . /code/
RUN chown -R app:app /code/
USER app

CMD python ./manage.py migrate
CMD python ./manage.py runserver 0.0.0.0:${PORT}
