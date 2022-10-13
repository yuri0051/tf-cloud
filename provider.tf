provider "aws" {
  region = var.aws-region
}

provider "google" {
  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
  credentials = var.gcp-credentials
}
