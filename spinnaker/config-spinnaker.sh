## Halyard pod 접속
kubectl exec --namespace default -it andy-spinnaker-spinnaker-halyard-0 bash
## List the available versions
hal version list
## Set the version you want to use
hal config version edit --version $VERSION
## Deploy Spinnaker
hal deploy apply
## Connect to the Spinnaker UI (포트 포워딩이 필요한 경우)
#hal deploy connect
## Jenkins 활성화
hal config ci jenkins enable
## Jenkins 계정정보 등록
hal config ci jenkins master add andyjenkinsserver001 --address http://jenkins.andy.com --username admin --password 1111
hal config ci jenkins master add andyjenkinsserver002 --address http://10.100.251.221:8080 --username admin --password 1111
hal config ci jenkins master add andyjenkinsserver003 --address http://10.100.251.221:30910 --username admin --password 1111
## 설정 확인
hal config
## 변경된 설정 적용
hal deploy apply
