CONCOURSE_PORT=44444
PIPELINE_NAME=docker-nginx

concourse-up:
	docker-compose up -d

concourse-logs:
	docker-compose logs -f

concourse-down:
	docker-compose down

concourse-status:
	docker-compose ps

concourse-login:
	fly -t lite login -c http://localhost:$(CONCOURSE_PORT)

concourse-ui:
	python -mwebbrowser http://localhost:$(CONCOURSE_PORT)

pipeline-update:
	fly -t lite set-pipeline -p $(PIPELINE_NAME) -c pipelines/pipeline.yml

git-lazy:
	git add .; git commit -m "updating..."; git push
	
docs:
	grip -b

docs-stop:
	killall grip