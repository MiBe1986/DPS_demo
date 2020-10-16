# DPS_demo
This repo contains a short demonstrator for infrastructure as code in order to demonstrate Azure DPS

## packer/config.json
This is the config.json for running "packer build config.json" which builds the image used in terraform.
Make sure to replace all **INSERT HERE** with your respective credentials, e.g., those of a service principal.

## packer/provisioning.sh
shell script for installing iotedge/dotnet-sdk/dotnet-runtime in the image.
Also the C# sample code in *SymmetricKeyProvisioning* is copied to the image

## packer/SymmetricKeyProvisioning/*
Example code from azure-iot-c#-sdk repo which registers a device to a DPS.
Fill out all **"INSERT HERE"** and run via "dotnet run SymmetricKeySample.csproj"

## terraform/main.tf
This tf script creates a specific number of virtual machines (check the variable *number_of_vms*) in a single resource group.

## register.sh
This is a workaround to finally execute the csproj on the machine via Azure CLI and currently runs with 3 VMs.
