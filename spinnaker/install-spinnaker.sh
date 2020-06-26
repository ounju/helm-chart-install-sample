#helm init
## Nginx 설치
helm install --name andy-nginx-ingress stable/nginx-ingress
## Jenkins 설치
helm install --name andy-jenkins stable/jenkins -f jenkins-values.yaml
## Spinnaker 설치
helm install --name andy-spinnaker -f values.yaml stable/spinnaker --version 2.0.0-rc8

