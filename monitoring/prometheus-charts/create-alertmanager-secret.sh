sed "s/SECRET/${SLACK_WEBHOOK_URL//\//\\/}/g" monitoring/prometheus-charts/alertmanager-secret.yaml | kubectl apply -f -
