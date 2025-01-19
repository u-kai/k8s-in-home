## cilium 
## Podのネットワーク疎通を可能にする
helm repo add cilium https://helm.cilium.io/
helm install cilium cilium/cilium  \
  --namespace kube-system \
  -f setup/cilium-values.yaml

## external-secrets
## argocd のリポジトリのシークレットを設定する
helm repo add external-secrets https://charts.external-secrets.io

helm install external-secrets \
   external-secrets/external-secrets \
    -n external-secrets \
    --create-namespace \

## create secrets for argocd repository
kubectl create secret generic awssm-secret -n argocd \
    --from-file=secret=aws-secret \
    --from-file=key=aws-key
kubectl apply -f setup/github-secret.yaml

## argo-cd
## argocdのインストール
## これが終了し次第、argocdのapp-of-appsによって全てのアプリケーションをデプロイする
helm repo add argo https://argoproj.github.io/argo-helm

helm install argocd argo/argo-cd \
  --namespace argocd \
  --create-namespace \
  -f setup/argocd-values.yaml

