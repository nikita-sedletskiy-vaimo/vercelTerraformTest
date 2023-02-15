# Define terraform requirements
terraform {
  # providers control how declarations are acted upon
  required_providers {
    # we want to interact with commercetools
    vercel = {
      source = "vercel/vercel"
      version = "~> 0.11.4"
    }
  }
  # system terraform version constraints
  required_version = ">=1.2.7"
}

provider "vercel" {
  api_token = var.api_token
}

resource "vercel_project" "example" {
  name= "terraform-deploy-test-project"
    git_repository = {
    type = "github"
    repo = "nikita-sedletskiy-vaimo/vercelTerraformTest"
    }
}
