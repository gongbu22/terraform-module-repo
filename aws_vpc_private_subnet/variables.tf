variable "vpc_id" {
  description = "vpc id"
  type = string
}

variable "pri_instance_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    cidr_block = string
    avail_zone = string
    ingress_port = list(number)
  }))
}

variable "public_igw_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

# variable "subnets_id" {
#   type = list(string)
# }