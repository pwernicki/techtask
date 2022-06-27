FROM python:3.7.1
ENV FLASK_APP "main.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG False
RUN mkdir /app
WORKDIR /app
COPY app/ /app/
RUN pip install --upgrade pip && \
    pip install pipenv && \
    pip install Flask && pip install Jinja2 && pip install requests
ADD . /app
EXPOSE 8088
CMD flask run --host=0.0.0.0 --port=8088
