terraform {
  required_version = ">=0.13"
  required_providers {
    proxmox = {
      source  = "Terraform-for-Proxmox/proxmox"
      version = ">=0.0.1"
    }
  }

  cloud {
    organization = "unixvextor"

    workspaces {
      name = "proxmox-prod"
    }
  }
}

variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "PUBLIC_SSH_KEY" {
  type      = string
  sensitive = true
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure     = true
}