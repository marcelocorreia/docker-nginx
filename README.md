# docker-nginx

Using embedded Concourse CI

### Start Concourse CI 
```$> make concourse-ci```

### Login at Concourse CI 
 - user: concourse
 - password: concourse
 
```
$> make login
fly -t lite login -c http://localhost:9966
logging in to team 'main'

username: concourse
password: 

target saved
```

### Create a credentials property file. 

> ![warning] (https://raw.githubusercontent.com/adam-p/markdown-here/master/src/common/images/icon48.png) Make sure you keep the file safe and add to .gitignore, you really don't want to push this file...

```yaml
docker_user: nicola_tesla
docker_password: secret_password
docker_mail: nicole@tesla.com

github_token: fegff2gffd32gdh3d42hgdhgdghdhg12hd2fgd21hg
github_user: nicola_tesla
github_private_key: |
  -----BEGIN RSA PRIVATE KEY-----
  NonononNonon/NonoononononoonoNoNoNONONonononononnonoONONOonONONO
  NonononNonon/NonoononononoonoNoNoNONONonononononnonoONONOonONONO
  NonononNonon/NonoononononoonoNoNoNONONonononononnonoONONOonONONO
  NonononNonon/NonoononononoonoNoNoNONONonononononnonoONONOonONONO
  NonononNonon/NonoononononoonoNoNoNONONonononononnonoONONOonONONO
  NonononNonon/NonoononononoonoNoNoNONONonononononnono
  -----END RSA PRIVATE KEY-----

```

### Set/Update Pipeline

```bash
$> make pipeline-update
```

### Open Concourse UI
```bash
$> make concourse-ui
```
or Open your browser @ http://localhost:$PORT, you can find the port set at docker-compose.yml file. 