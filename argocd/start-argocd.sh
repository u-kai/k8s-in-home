#!/bin/zsh

kubectl create ns argocd

kubectl create secret generic awssm-secret -n argocd \
    --from-file=secret=aws-secret \
    --from-file=key=aws-key

helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -n argocd

kubectl apply -f argocd/github-secret.yaml


