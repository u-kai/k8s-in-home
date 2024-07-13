sed "s/SECRET/$GRAFANA_PASSWORD/g" monitoring/grafana-secret.yaml | kubectl apply -f -
