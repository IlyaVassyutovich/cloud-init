#!/usr/bin/env bash

uvt-kvm create \
    --memory 512 \
    --disk 8 \
    --cpu 2 \
    --bridge br_kvm \
    --user-data /home/ilya_vassyutovich/cloud-init/user_data.yaml \
        test-29 \
            release=jammy arch=amd64

sudo virsh console test-29
