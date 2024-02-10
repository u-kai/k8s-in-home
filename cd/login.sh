ARGOCD_PASSWORD=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
argocd login argocd.example.com:443 --username admin --password $ARGOCD_PASSWORD --insecure --grpc-web
