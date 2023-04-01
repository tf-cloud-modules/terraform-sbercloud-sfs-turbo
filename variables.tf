variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the SFS Turbo resource. If omitted, the provider-level region will be used."
  type        = string
  default     = null
}

variable "name" {
  description = "Specifies the name of an SFS Turbo file system."
  type        = string
}

variable "size" {
  description = "Specifies the capacity of a common file system, in GB."
  type        = number
  default     = 500
}

variable "share_proto" {
  description = "Specifies the protocol for sharing file systems."
  type        = string
  default     = null
}
       
variable "share_type" {
  description = "Specifies the file system type."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "Specifies the availability zone where the file system is located."
  type        = string
}

variable "vpc_id" {
  description = "Specifies the VPC ID. Changing this will create a new resource."
  type        = string
}

variable "subnet_id" {
  description = "Specifies the network ID of the subnet."
  type        = string
}

variable "security_group_id" {
  description = "Specifies the security group ID."
  type        = string
}

variable "enhanced" {
  description = "Specifies whether the file system is enhanced or not. "
  type        = string
  default     = null
}  