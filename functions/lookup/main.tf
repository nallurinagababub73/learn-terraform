variable "components" {
  default = ["frontend","catalogue","user","cart","shipping","payment"]
}

output "component_name" {
  value = element(var.components,7 )
}