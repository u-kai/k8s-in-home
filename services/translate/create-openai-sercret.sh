sed "s/SECRET/$OPENAI_API_KEY/g" services/translate/openai-secret.yaml | kubectl create -f  - -n test
sed "s/SECRET/$OPENAI_API_KEY/g" services/translate/openai-secret.yaml | kubectl create -f  - -n dev
sed "s/SECRET/"$OPENAI_API_KEY"/g" services/translate/openai-secret.yaml | kubectl create -f  - -n prod
