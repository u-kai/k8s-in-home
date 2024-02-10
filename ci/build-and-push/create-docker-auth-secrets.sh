SECRET=$(/bin/echo -n $DOCKER_HUB_USERNAME:$DOCKER_HUB_PASSWORD | base64)
/bin/echo -n '{"auths":{"https://index.docker.io/v1/":{"auth":"'"$SECRET"'"}}}' > config.json

cat config.json

kubectl create secret generic docker-credentials --from-file=config.json=config.json 
rm config.json
