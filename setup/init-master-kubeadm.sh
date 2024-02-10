CONTROL_PLANE_ENDPOINT=$1
kubeadm init --pod-network-cidr=10.244.0.0/16 --control-plane-endpoint=$CONTROL_PLANE_ENDPOINT:6443 --upload-certs

