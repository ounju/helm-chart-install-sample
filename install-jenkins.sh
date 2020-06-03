helm init
helm install --name andy-nginx-ingress stable/nginx-ingress
helm install --name andy-jenkins stable/jenkins -f jenkins-values.yaml
helm install --name andy-prometheus stable/prometheus
helm install --name andy-metric-server stable/metrics-server
# Add the Elastic Helm Chart Repo
helm repo add elastic https://helm.elastic.co
helm install --name andy-elasticsearch elastic/elasticsearch -f elasticsearch-values.yaml
helm install --name andy-kibana elastic/kibana -f kibana-values.yaml
helm install --name andy-openldap stable/openldap
helm install --name andy-sonatype-nexus stable/sonatype-nexus -f sonatype-nexus-values.yaml
