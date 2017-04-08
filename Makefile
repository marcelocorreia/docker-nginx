CONCOURSE_PORT=9966
GIT_REPO_URL=git@github.com:marcelocorreia/docker-nginx.git
CONTAINER_NAME=docker-nginx

super-lazy: git-lazy pipeline-update

concourse-up:
	docker-compose up -d

concourse-logs:
	docker-compose logs concourse-web

concourse-down:
	docker-compose down

concourse-status:
	docker-compose ps

concourse-login:
	fly -t lite login -c http://localhost:$(CONCOURSE_PORT)

concourse-ui:
	python -mwebbrowser http://localhost:$(CONCOURSE_PORT)

pipeline-update:
	fly -t lite set-pipeline \
		-n -p $(CONTAINER_NAME) \
		-c cicd/pipelines/pipeline.yml \
		-l /home/marcelo/.ssh/ci-credentials.yml \
		-l cicd/pipelines/config.yml



pipeline-destroy:
	fly -t lite destroy-pipeline -p $(CONTAINER_NAME)

git-lazy:
	git add .; git commit -m "updating..."; git push

git-fetch:
	git fetch

git-pull:
	git pull

docs:
	grip -b

docs-stop:
	killall grip