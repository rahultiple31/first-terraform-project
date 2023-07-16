terraform {
  backend "s3" {
    bucket = "primuslearning-app"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}
