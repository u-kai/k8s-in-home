sudo snap install helm --classic
helm repo add cilium https://helm.cilium.io/
helm install cilium cilium/cilium --version 1.15.0 \
  --namespace kube-system
