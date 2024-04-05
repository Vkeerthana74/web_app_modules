variable "res_grp_name"{
    type = string
    description = "value of resource group name"
    default = "resourcegrp"

} 
variable "res_grp_location"{
    type = string
    description = "value of resource group location"
    default = "East US"
} 
variable "app_service_plan" {
    type = string
    description = "value of app_service_plan"
    default = "AppServicePlan"
  

}
variable "os_type" {
    type = string
    description = "value of os type"
    default = "Linux"
  
}
variable "sku_name" {
    type = string
    description = "value of sku name"
    default = "F1"
  
}
variable "web_app_name" {
    type = string
    description = "value of web app"
    default = "JavaAppnike"

}
variable "java_version" {
    type = string
    description = "value ofjava_version "
    default = "11"

}
variable "java_server" {
    type = string
    description = "value ofjava_server "
    default = "TOMCAT"

}
variable "java_server_version" {
    type = string
    description = "value ofjava_server_version "
    default = "9"

}