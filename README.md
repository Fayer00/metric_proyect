# README

How to run

```
docker compose build
docker compose run --rm web bin/rails db:setup
docker compose run --rm web bin/rails db:seed
docker compose up
```