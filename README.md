# Django Restful CRUD API with PostgreSQL example

For more detail, please visit:
> [Django CRUD with PostgreSQL example | Django Rest Framework](https://bezkoder.com/django-postgresql-crud-rest-framework/)

## Running the Application

Create the DB tables first:
```
python src/manage.py migrate
```
Run the development web server:
```
python manage.py runserver 8080
```
Open the URL http://localhost:8080/ to access the application.


## Requirements
- Python 3.7
- Django 2.1.15
- Django Rest Framework 3.11.0
- psycopg2 2.8.5
- django-cors-headers 3.2.1

## Repo from:
https://github.com/bezkoder/django-rest-api-postgresql


## How do I get set up?
Summary of set up Setup for local on Macbook, Staging and Live/Production.

### Deployment instructions

0. Open a terminal window
1. Make py3.6 virtualenv
Check if you have Py3 and ocally make a new virtualenv in myProjects:

```bash
# Go to you local project folder:
cd $HOME/myProjects/django-rest-api-postgresql
# Check to make sure Py3 is available:
which python3
/usr/local/bin/python3.7
# Create a virtualenv
python3 -m venv .
```

### PostgreSQL
You have a `Dockerfile` in the repo.
To start the DB just run:
```bash
make start-db
make stop-db
```
