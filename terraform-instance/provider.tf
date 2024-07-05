terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure     = var.pm_tls_insecure
}

provider "aws" {
  access_key                  = var.access_key
  secret_key                  = var.secret_key_minio
  region                      = "us-east-1" # Questo valore è ignorato ma necessario da Terraform
  skip_requesting_account_id  = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true

  endpoints {
    s3 = var.minio_url
  }

}