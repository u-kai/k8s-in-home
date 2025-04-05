/etc/cni/net.d への権限が足りずに cni plagin が動かないケースがある

権限を以下のコマンドで足して、containerd を再起動すると解決する

```bash
sudo chown root:root /etc/cni/net.d/05-cilium.conflist
sudo chmod 644 /etc/cni/net.d/05-cilium.conflist
sudo systemctl restart containerd
```

と思ったけど、containerd を再起動するだけで解決した

## Procedure

1. Create control plane
2. Create worker node by using kubeadm join command
3. Create cilium network using helm
4. Create external-secrets using helm
5. Register github token to external-secrets
6. Create argocd using helm
7. Register github repository to argocd
8. Create argocd application using app-of-apps pattern

kubectl -n kube-system patch configmap kube-proxy -p '{"data":{"mode":"none"}}'

~/.kube 配下に config.eksctl.lock とか kubens を消すと no host route 出なくなった

## metallb

sudo ifconfig wlan0 promisc
