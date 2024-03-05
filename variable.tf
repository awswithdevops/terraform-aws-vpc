variable "cidr_block" {
  default = "10.0.0.0/16" #users can overide
  type = string
}

variable "enable_dns_hostnames" {
  default = true
  type = bool
}

variable "common_tags" {
    default = {}
    type = map
  
}

variable "vpc_tags" {
  default = {}
  type = map
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "gw_tags" {
  default = {}
  type = map
}

variable "public_subnets_cidr" {
  type = list
  validation {
    condition = length(var.public_subnets_cidr)==2
    error_message = "plese give valid public subnet cidr 2 "
  }
}

variable "public_subnets_tags" {
  default = {}
}

variable "private_subnets_cidr" {
  type = list
  validation {
    condition = length(var.private_subnets_cidr)==2
    error_message = "plese give valid private subnet cidr 2 "
  }
}

variable "private_subnets_tags" {
  default = {}
}

variable "database_subnets_cidr" {
  type = list
  validation {
    condition = length(var.database_subnets_cidr)==2
    error_message = "plese give valid database subnet cidr 2 "
  }
}
variable "database_subnets_tags" {
  default = {}
}

variable "nat_gateway" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

variable "vpc_peering_tags" {
  default = {}
}
 
