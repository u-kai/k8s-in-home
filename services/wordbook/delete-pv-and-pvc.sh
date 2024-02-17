kubectl patch pv wordbook-db-pv-dev -p '{"metadata":{"finalizers":null}}'
kubectl patch pvc wordbook-db-pv -p '{"metadata":{"finalizers":null}}' -n dev
kubectl delete pvc wordbook-db-pv -n dev
kubectl delete pv wordbook-db-pv-dev
