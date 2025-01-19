#!/bin/zsh
kubectl create secret generic awssm-secret -n $1 \
    --from-file=secret=aws-secret \
    --from-file=key=aws-key

