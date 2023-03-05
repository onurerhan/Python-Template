FROM python:3.11

ENV PYTHONUNBUFFERED True
ENV PYTHONDONTWRITEBYTECODE True

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY ./src/requirements.txt ./requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN /usr/local/bin/python -m pip install --upgrade setuptools
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD ["python", "src/main.py"]
