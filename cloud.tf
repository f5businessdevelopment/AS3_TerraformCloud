terraform {

  cloud {
    organization = "${org}"

    workspaces {
      name = "${works}"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.44.0"
    }
  }

  required_version = ">= 1.1.0"
}
