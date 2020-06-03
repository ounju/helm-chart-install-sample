helm init
helm install --name andy-nginx-ingress stable/nginx-ingress
helm install --name andy-jenkins stable/jenkins -f jenkins-values.yaml
