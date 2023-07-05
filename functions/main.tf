variable "location" {
  default = "hyderabad"
}

output "loc" {
  value = upper(var.location)
}
output "loca" {
  value = title(var.location)
}

variable "edu" {
  default = ["tenth","inter","b.tech"]
}
output "number" {
  value = length(var.edu)
}