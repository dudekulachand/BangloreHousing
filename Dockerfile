FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
ENTRYPOINT [ "python" ]
# CMD flask run --host=0.0.0.0 --port=$PORT app:app
CMD ["app.py"]