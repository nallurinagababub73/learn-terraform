variable "location" {
  default = "hyderabad"
}

output "loc" {
  value = upper(var.location)
}
output "loca" {
  value = title(var.location)
}