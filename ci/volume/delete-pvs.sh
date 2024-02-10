kubectl patch pv tekton-pv-app -p '{"metadata":{"finalizers":null}}'
kubectl patch pv tekton -p '{"metadata":{"finalizers":null}}'
kubectl patch pvc tekton-pvc-app -p '{"metadata":{"finalizers":null}}'
kubectl patch pvc tekton-pvc -p '{"metadata":{"finalizers":null}}'

kubectl delete -f ci/volume
