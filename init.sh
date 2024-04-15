#!/bin/bash

echo "Pulling Docker container ... "

sudo bash

sudo groupadd -f docker
sudo usermod -a -G docker $USER
su -s ${USER}
sudo dockerd

docker pull phoronix/pts

chmod +x phoronix_init.sh

echo "Starting KVM VM ... "

# start libvrtd
systemctl enable --now libvirtd

# change VM root password
cd /var/lib/libvirt/images
virt-customize -a bionic-server-cloudimg-amd64.img --root-password password:root

# starts a VM with name kvm_benchmarking
virt-install --name=kvm_benchmarking --os-type=Linux --vcpu=2 --ram=2048 --disk path=/var/lib/libvirt/images/bionic-server-cloudimg-amd64.img --import --os-variant=ubuntu18.04 --network bridge:virbr0 &

# check to see if it's running
virsh list --all