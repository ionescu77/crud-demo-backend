version: '3.7'

services:
  db:
    image: postgres:9.6.17-alpine
    volumes:
      - postgres_data:/var/lib/postgresql/data/
    ports:
      - 15432:5432
    environment:
      - POSTGRES_USER=djangorestapi
      - POSTGRES_PASSWORD=123
      - POSTGRES_DB=djangorestapidb

volumes:
  postgres_data:
