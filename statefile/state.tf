terraform {
  backend "s3" {
    bucket = "4338"
    key    = "naga/hema/pardhu/terraform.tfstate"
    region = "us-east-1"
  }
}

output "example" {
  value = "hello world"
}
