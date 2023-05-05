kubectl create namespace argo-rollouts
kubectl apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml
kubectl rollout status deployment -n argo-rollouts

echo -e "Argo Workflows: https://localhost:2746"
kubectl -n argo port-forward deployment/argo-server 2746:2746 &