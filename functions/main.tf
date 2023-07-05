variable "location" {
  default = "hyderabad"
}

output "loc" {
  value = upper(var.location)
}