FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN my_test_project create-db
RUN my_test_project populate-db
RUN my_test_project add-user -u admin -p admin
EXPOSE 5000
CMD ["my_test_project", "run"]
