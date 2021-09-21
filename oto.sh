# Install Datadog into Kubernetes using Helm chart

# First install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

#variabel apikey
API_KEY="InsertYourAPIkeyFromDatadog"

#Add the Datadog Helm repository
helm repo add datadog https://helm.datadoghq.com

#Deploy the Datadog Agent
helm install datadog --set datadog.site='datadoghq.com' --set datadog.apiKey=$API_KEY --set datadog.apm.enabled=true datadog/datadog

#deploy your application
kubectl apply -f landing.yaml

#deploy prometheus
kubectl create -f prom.yaml
