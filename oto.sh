# Install Datadog into Kubernetes using Helm chart

API_KEY="9e4776dfc76fd4512a9bac817c2bc45a"

#helm repo add datadog https://helm.datadoghq.com

helm install datadog --set datadog.site='datadoghq.com' --set datadog.apiKey=$API_KEY --set datadog.apm.enabled=true datadog/datadog
