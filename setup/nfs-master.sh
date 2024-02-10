IP_RANGE=$1
TARGET_DIR=$2
sudo apt install nfs-kernel-server
echo "TARGET_DIR  $IP_RANGE(rw,async,crossmnt,no_root_squash,no_subtree_check)" | sudo tee -a /etc/exports
sudo systemctl start nfs-server.service
sudo systemctl enable nfs-server.service
