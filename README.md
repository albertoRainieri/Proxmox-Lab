# Project Name: Proxmox Cluster Configuration

## Overview

This repository provides Ansible playbooks and Terraform configurations for setting up a Proxmox cluster with specific services.

## Project Structure

* **ansible:** Contains Ansible playbooks for deploying various services on the Proxmox cluster.
    * **haproxy:** Configures HAProxy for load balancing.
    * **minio:** Deploys Minio for object storage.
    * **named:** Sets up BIND (named) for DNS resolution.
* **terraform-instance:** Terraform configurations for creating virtual machines on the Proxmox cluster.

## Prerequisites

* Proxmox VE installation
* Ansible
* Terraform
* A private network in Proxmox
* A dedicated Proxmox storage
* A cloud-init template

## Ansible Playbooks

### HAProxy
* Configures HAProxy for load balancing between backend servers.
* **Usage:**
  ```bash
  ansible-playbook haproxy/main.yml -i hosts