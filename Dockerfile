FROM python:3.6
ENV PYTHONUNBUFFERED=1
ENV WEBAPP_DIR=/crud_python
RUN mkdir $WEBAPP_DIR
#ENV FLASK_APP=index.py
#ENV FLASK_ENV=development 
WORKDIR $WEBAPP_DIR
ADD requirements.txt $WEBAPP_DIR/
RUN pip3 install -r requirements.txt
ADD . $WEBAPP_DIR/
#CMD ["flask", "run"]
CMD flask run --host=0.0.0.0
