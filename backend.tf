terraform {
  backend "gcs" {
    bucket = "2217c4650963e4e3-bucket-tfstate"
    prefix = "gcpstate/terraform.tfstate"
  }
}
