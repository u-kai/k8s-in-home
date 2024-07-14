kubectl patch pv for-loki5 -p '{"metadata":{"finalizers":null}}'

kubectl delete pv for-loki5
