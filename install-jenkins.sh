## Helm 설치 및 초기화
brew install helm@2
helm init
## Nginx 설치
helm install --name andy-nginx-ingress stable/nginx-ingress
## Jenkins 설치
helm install --name andy-jenkins stable/jenkins -f jenkins-values.yaml
## http://127.0.0.1:80 으로 접속, admin/1111 로그인
## Nexus 설치
helm repo add oteemocharts https://oteemo.github.io/charts
helm install --name andy-sonatype-nexus oteemocharts/sonatype-nexus -f sonatype-nexus-values.yaml
## "kubectl get svc | grep nexus" 명령어를 이용하여 NodePort 설정 확인, 예를 들어 확인된 포트가 30284이면 http://127.0.0.1:30284 접속, admin/admin123 로그인.
## mariadb 설치
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install --name andy-mariadb bitnami/mariadb -f mariadb-values.yaml
## root 암호는 1111, localhost:32000으로 접속, DataBase INF 생성됨

#helm install --name andy-prometheus stable/prometheus
#helm install --name andy-metric-server stable/metrics-server
## Add the Elastic Helm Chart Repo
#helm repo add elastic https://helm.elastic.co
#helm install --name andy-elasticsearch elastic/elasticsearch -f elasticsearch-values.yaml
#helm install --name andy-kibana elastic/kibana -f kibana-values.yaml
#helm install --name andy-openldap stable/openldap
## MySQL 설치
#helm install --name andy-mysql stable/mysql -f mysql-values.yaml
## root 암호는 1111, localhost:32000으로 접속, DataBase INF 생성됨
