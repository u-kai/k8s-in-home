TOKEN=$1

curl http://dev.kaiandkai.com/wordbook/health \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN"

