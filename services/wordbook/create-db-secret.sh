PASSWORD=$(openssl rand -base64 32 | tr '+/' '-_' | tr -d '=')
sed "s/SECRET/'"$PASSWORD"'/g" services/wordbook/db-secret.yaml | kubectl create -f  - -n dev

PASSWORD=$(openssl rand -base64 32 | tr '+/' '-_' | tr -d '=')
sed "s/SECRET/$PASSWORD/g" services/wordbook/db-secret.yaml | kubectl create -f  - -n prod

