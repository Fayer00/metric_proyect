# README


This is a Test with Rails 7, ruby 3.1.2 and  bootstrap 5 with postgresql 
running on docker
How to run

```
docker compose build
docker compose run --rm web bin/rails db:setup
docker compose up
docker-compose exec web bundle exec rake db:seed
```

To run tests
```
docker-compose exec web bundle exec rspec
```