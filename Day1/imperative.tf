terraform {
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
    version = "1.21.0"
    }
  }


  cloud {
    organization = "f5networks-bd"


    workspaces {
      name = "scsworks"
    }
  } 
}


provider "bigip" {
  address  = var.hostname
  username = var.username
  password = var.password
}
