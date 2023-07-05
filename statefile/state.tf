terraform {
  backend "s3" {
    bucket = "4338"
    key    = "naga/terraform.tfstate"
    region = "us-east-1"
  }
}

output "example" {
  value = "hello world"
}
