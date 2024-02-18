NS=$1

if [ -z "$NS" ]; then
  echo "Usage: $0 <namespace>"
  exit 1
fi

echo "Enabling istio in namespace $NS"

kubectl label namespace $NS istio-injection=enabled
