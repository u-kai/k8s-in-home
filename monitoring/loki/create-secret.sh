REPLACE_ID='$ID'
REPLACE_SECRET='$SECRET'
sed -e "s/$REPLACE_ID/${AWS_ACCESS_KEY_ID}/g" -e "s/$REPLACE_SECRET/${AWS_SECRET_ACCESS_KEY}/g" monitoring/loki/secrets.yaml | kubectl apply -f -
