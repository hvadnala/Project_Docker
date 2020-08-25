FROM python:3
ADD . /project_Docker
WORKDIR /project_Docker
RUN pip install -r requirements.txt
CMD ['python','flask_app.py']

