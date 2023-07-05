terraform {
  backend "s3" {
    bucket = "my sample s3 bucket"
    key    = "naga/hema/pardhu/terraform.tfstate"
    region = "us-east-1"
  }
}
