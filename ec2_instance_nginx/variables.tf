# 모듈에 사용할 변수 정의
variable "ami" {
  description = "ami id for instance"
  type = string
}

variable "instance_type" {
  description = "type of instance"
  type = string
}

variable "key_name" {
  description = "key name for instance"
  type = string
}

variable "instance_name" {
  description = "instance name for instance"
  type = string
}

variable "security_group_id" {
  description = "id for assign to instance"
  type = string
}