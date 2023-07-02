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

variable "details" {
  default = {
    father = "srinivasarao"
    mother = "venkateswaramma"
    wife = "lalithakumari"
    daughter = "hemasri"
    son = "pardhu"
  }
}
output "details" {
  value = "father name is ${var.details["father"]} mother name is ${var.details["mother"]}"
}