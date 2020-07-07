echo '---------------------------------------------------------------------------------'
#helm2 init
#sleep 20
echo '---------------------------------------------------------------------------------'
## Nginx 설치
helm install nginx-ingress stable/nginx-ingress
echo '---------------------------------------------------------------------------------'
## Argo CD
## Helm 2 버전으로 설치해야 함
helm2 repo add argo https://argoproj.github.io/argo-helm
helm2 install --name argocd argo/argo-cd -f argocd-values.yaml --no-crd-hook
echo '---------------------------------------------------------------------------------'
