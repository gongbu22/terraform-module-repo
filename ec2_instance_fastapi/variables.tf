variable "ami" {
  description = "fastapi ami"
  type = string
}

variable "instance_type" {
  description = "instance_type"
  type = string
}

variable "key_name" {
  description = "key name"
  type = string
}

variable "security_group_id" {
  description = "fastapi security group id"
  type = string
}

variable "instance_name" {
  description = "fastapi instance name"
  type = string
}