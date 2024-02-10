HOSTNAME=$1
kubectl taint nodes $HOSTNAME node-role.kubernetes.io/control-plane:NoSchedule-

