variable "training" {
  default = "Devops Training"
}

output "training" {
  value = var.training
}

variable "family" {
  default = ["nagababu","lalithakumari,","hemasri","pardhu"]
}

output "family" {
  value = var.family[1]
}