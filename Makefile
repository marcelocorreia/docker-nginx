CONCOURSE_PORT=9966
PIPELINE_NAME=docker-nginx
GIT_REPO_URL=git@github.com:marcelocorreia/docker-nginx.git

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
	fly -t lite set-pipeline -n -p $(PIPELINE_NAME) -c cicd/pipelines/pipeline.yml -l creds/credentials.yml -v git_repo_url=$(GIT_REPO_URL)


pipeline-destroy:
	fly -t lite destroy-pipeline -p $(PIPELINE_NAME)

git-lazy:
	cd git add .; git commit -m "updating..."; git push

git-fetch:
	git fetch

git-pull:
	git pull

docs:
	grip -b

docs-stop:
	killall grip