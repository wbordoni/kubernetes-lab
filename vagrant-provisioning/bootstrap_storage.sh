#!/bin/bash

# Installation serveur nfs
echo "[TASK 1] Installation du serveur NFS"
yum install -y -q nfs-utils

# nfs server start
systemctl restart rpcbinb nfs-server
