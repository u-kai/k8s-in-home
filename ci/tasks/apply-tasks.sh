kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/kaniko/0.6/raw -n dev
kubectl apply -f ci/tasks/deploy-task.yaml -n dev
kubectl apply -f ci/tasks/git-task.yaml -n dev
kubectl apply -f ci/tasks/kustomize-task.yaml -n dev
