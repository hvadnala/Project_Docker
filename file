FROM python:3
ADD . /project_Docker
WORKDIR /project_Docker
RUN pip install -r requirements.txt
CMD export FLASK_APP=flask_app.py
CMD flask run -h localhost -p 8080
