variable "bucket_name" {}

variable "acl_value" {
    default = "private"
}


variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "name"  {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}


variable "ami" {
type = string
}
variable "vpc_id" {}
variable "subnet_id" {}
variable "instance_type" {
type = string
}
