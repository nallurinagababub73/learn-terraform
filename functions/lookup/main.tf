variable "components" {
  default = ["frontend","catalogue","user","cart","shipping","payment"]
}

output "component_name" {
  value = element(var.components,7 )
}
variable "roboshop" {
  default = {
    presentation = {
      frontend1 = "nginx"
      frontend2 = "appache"
    }
    application = {
      app1 = "catalogue"
      app2 = "cart"
    }
    database = {
      db1 = "mongodb"
      db2 = "redis"
      db3 = "mysql"
      db4 = {
        dispatch = "rabbitmq"
      }

    }
  }
}

output "layer1" {
  value = var.roboshop["presentation"]
}
output "layer2" {
  value = var.roboshop["application"]["app1"]
}
output "layer3" {
  value = var.roboshop["database"]["db4"]["dispatch"]
}