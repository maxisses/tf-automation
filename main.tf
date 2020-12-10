terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.13.1"
    }
  }
}
provider "ibm" {
  generation = 1
  region     = "eu-de"
}