CONCOURSE_PORT=44444

concourse-up:
	docker-compose up -d

concourse-logs:
	docker-compose logs -f

concourse-down:
	docker-compose down

concourse-status:
	docker-compose ps

concourse-ui:
	python -mwebbrowser http://localhost:$(CONCOURSE_PORT)

docs:
	grip -b

docs-stop:
	killall grip