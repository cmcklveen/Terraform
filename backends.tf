# --- roo/backends.tf ---

terraform {
  cloud {
    organization = "schoolofmac"

    workspaces {
      name = "som-dev"
    }
  }
}