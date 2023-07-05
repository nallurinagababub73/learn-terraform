variable "components" {
  default = ["frontend","catalogue","user","cart","shipping","payment"]
}

output "component_name" {
  value = var.components[6]
}