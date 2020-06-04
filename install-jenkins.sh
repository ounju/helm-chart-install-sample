helm init
helm install --name andy-nginx-ingress stable/nginx-ingress
helm install --name andy-jenkins stable/jenkins -f jenkins-values.yaml
#helm install --name andy-prometheus stable/prometheus
#helm install --name andy-metric-server stable/metrics-server
## Add the Elastic Helm Chart Repo
#helm repo add elastic https://helm.elastic.co
#helm install --name andy-elasticsearch elastic/elasticsearch -f elasticsearch-values.yaml
#helm install --name andy-kibana elastic/kibana -f kibana-values.yaml
#helm install --name andy-openldap stable/openldap
helm repo add oteemocharts https://oteemo.github.io/charts
helm install --name andy-sonatype-nexus oteemocharts/sonatype-nexus -f sonatype-nexus-values.yaml
## Nexus 포트 포워딩 설정
kubectl --namespace default port-forward $POD_NAME 8081

