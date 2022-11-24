variable "github_app_id" {
  type      = string
  sensitive = true
  nullable  = false
}

variable "github_app_private_key" {
  type      = string
  sensitive = true
  nullable  = false
}

variable "github_install_profianinc" {
  type      = string
  sensitive = false
  nullable  = false
}

variable "github_install_enarx" {
  type      = string
  sensitive = false
  nullable  = false
}

provider "github" {
  alias = "profianinc"
  owner = "profianinc"

  app_auth {
    id              = var.github_app_id
    pem_file        = var.github_app_private_key
    installation_id = var.github_install_profianinc
  }
}

provider "github" {
  alias = "enarx"
  owner = "enarx"

  app_auth {
    id              = var.github_app_id
    pem_file        = var.github_app_private_key
    installation_id = var.github_install_enarx
  }
}
