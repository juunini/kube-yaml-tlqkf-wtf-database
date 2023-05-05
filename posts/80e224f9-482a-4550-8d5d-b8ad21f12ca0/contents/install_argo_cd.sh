kubectl create namespace argocd
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/ha/install.yaml -n argocd
kubectl rollout status deployment -n argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/rollout-extension/v0.2.1/manifests/install.yaml

kubectl -n argocd port-forward service/argocd-server $ARGO_CD_PORT:443 &