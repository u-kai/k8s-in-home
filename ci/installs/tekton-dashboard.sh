kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/dashboard/latest/release-full.yaml
kubectl port-forward -n tekton-pipelines service/tekton-dashboard 9097:9097
