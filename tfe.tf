terraform {
  required_providers {
    tfe = {
      version = "~> 0.54.0"
    }
  }
}

provider "tfe" {
  hostname = "app.terraform.io"
}

# Create an organization
resource "tfe_organization" "Org" {
name  = "student-${local.prefix}"
  email = "s.shitole@f5.com"
  # ...
}

resource "tfe_workspace" "myworkspace" {
  name         = "workspace-${local.prefix}"
  organization = tfe_organization.Org.name
  tag_names    = ["workshop"]
}
output "Your_Workshop_HCP_Org" {
 value = "student-${local.prefix}"
}
