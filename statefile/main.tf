terraform {
  backend "s3" {
    bucket = "naga-b73"
    key    = "pardhu/terraform.tfstate"
    region = "us-east-1"
  }
}

output "example" {
  value = "hello world"
}
