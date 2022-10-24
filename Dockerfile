FROM python:3.10.6-slim-buster
COPY app.py user_msgs.py ./
RUN apt-get update \
    && apt-get -y install libpq-dev gcc git\
    && pip3 install pyTelegramBotAPI \
    && pip3 install --upgrade pyTelegramBotAPI \
    && pip3 install python-dotenv
EXPOSE $PORT
CMD [ "python3", "-u", "./app.py" ]