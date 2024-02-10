#!/bin/bash
sudo kubeadm reset
sudo rm -rf /etc/cni/net.d/
sudo ipvsadm --clear
sudo rm -rf ~/.kube/config
sudo iptables -F && sudo iptables -t nat -F && sudo iptables -t mangle -F && sudo iptables -X
