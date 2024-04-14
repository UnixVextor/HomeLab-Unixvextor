terraform {
  required_providers {
    dns = {
      source = "hashicorp/dns"
      version = "3.4.0"
    }
  }

  cloud {
    organization = "unixvextor"

    workspaces {
      name = "dns-prod"
    }
  }
}

variable "tsig_key" {
  type = string
  sensitive = true
}

provider "dns" {
  update {
    server = "10.10.30.249"
    key_name = "rndc-key."
    key_algorithm = "hmac-sha256"
    key_secret = var.tsig_key
  }
}