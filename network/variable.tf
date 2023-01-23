variable "vpc_ccb" {
  type = object({
    cidr_block = string
    name = string
  })
  default = {
    cidr_block = "172.16.0.0/16"
    name = "vpc-ccb"
  }
}

variable "config_subnets" {
  default = {
    "web1" = {  cidr_block = "172.16.10.0/24", availability_zone = "eu-central-1a", name = "web1", map_public_ip = true },
    "web2" = {  cidr_block = "172.16.20.0/24", availability_zone = "eu-central-1b", name = "web2", map_public_ip = false },
  }
}