
## Запуск проекта
build:
	docker-compose build
	docker-compose run --rm ruby bash -c 'bundle install'

## Запуск тестов
tests:
	docker-compose run --rm ruby bash -c 'bundle exec rake test'

## Запуск линтера
lint:
	docker-compose run --rm ruby bash -c 'bundle exec rubocop'
