#!/bin/bash
sudo growpart /dev/nvme0n1 4
sudo pvresize /dev/nvme0n1p4
sudo lvextend -L +10G /dev/mapper/RootVG-homeVol
sudo xfs_growfs /home
sudo yum install fontconfig java-21-openjdk -y
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum install terraform -y 