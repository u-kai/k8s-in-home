kubectl patch pv monitoring1 -p '{"metadata":{"finalizers":null}}'
kubectl patch pv monitoring2 -p '{"metadata":{"finalizers":null}}'

kubectl delete -f monitoring
