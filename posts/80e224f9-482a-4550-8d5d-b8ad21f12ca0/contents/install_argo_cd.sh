kubectl create namespace argocd
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/ha/install.yaml -n argocd
kubectl rollout status deployment -n argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/rollout-extension/v0.2.1/manifests/install.yaml

echo -e "
USERNAME: admin
PASSWORD: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)

Argo CD: https://localhost:$ARGO_CD_PORT
"

kubectl -n argocd port-forward service/argocd-server $ARGO_CD_PORT:443 &