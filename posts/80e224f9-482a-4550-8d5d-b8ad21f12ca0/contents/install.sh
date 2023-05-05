sh install_ingress_nginx.sh
sh install_cert_manager.sh
sh install_argo_cd.sh
sh install_argo_rollouts.sh
sh install_argo_workflows.sh
sh install_argo_event.sh

echo -e "
USERNAME: admin
PASSWORD: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d)

Argo CD: https://localhost:$ARGO_CD_PORT
"

echo -e "Argo Workflows: https://localhost:$ARGO_WORKFLOW_PORT"