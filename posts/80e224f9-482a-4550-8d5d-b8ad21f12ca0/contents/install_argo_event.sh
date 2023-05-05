kubectl create namespace argo-events
kubectl apply -n argo-events -f https://github.com/argoproj/argo-events/releases/download/v1.7.5/install.yaml
ubectl apply -n argo-events -f https://github.com/argoproj/argo-events/releases/download/v1.7.5/install-validating-webhook.yaml
kubectl rollout status deployment -n argo-events