sed "s/SECRET/$GITHUB_PAT/g" ci/build-and-push/github-secret.yaml | kubectl apply -f -
