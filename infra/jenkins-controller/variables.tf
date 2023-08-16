variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the resources"
}

variable "region" {
  type        = string
  description = "Region of the VPC"
}

variable "ami_id" {
  type = string
  description = "Instance AMI ID"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
}

variable "instance_count" {
  type    = number
  description = "EC2 instance count"
}

variable "key_name" {
  type = string
  description = "Key for the Instance"
}

variable "vpc_id" {
  type = string
  description = "VPC id for the Instance"
}

variable "subnet_ids" {
  type    = list(string)
  description = "Subnet id for the Instance"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Enable or disable public ip address"
}

variable "attach_instance_profile" {
  type        = bool
  description = "Attach instance profile or not"
}

variable "ingress_cidr_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr ingress rules"
}

variable "ingress_cidr_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr ingress rules"
}

variable "ingress_cidr_protocol" {
  type        = list(string)
  description = "List of protocols for cidr ingress rules "
}

variable "ingress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr ingress rules"
}

variable "ingress_sg_from_port" {
  type        = list(number)
  description = "List of starting ports for sg ingress rules"
}

variable "ingress_sg_to_port" {
  type        = list(number)
  description = "List of ending ports for sg ingress rules"
}

variable "ingress_sg_protocol" {
  type        = list(string)
  description = "List of protocols for sg ingress rules"
}

variable "ingress_security_group_ids" {
  type        = list(string)
  default     = [ "sg-0fe4363da3994c100" ]
  description = "List of Security Group ids for sg ingress rules"
}

variable "egress_cidr_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr egress rules"
}

variable "egress_cidr_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr egress rules"
}

variable "egress_cidr_protocol" {
  type        = list(any)
  description = "List of protocols for cidr egress rules"
}

variable "egress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr egress rules"
}

variable "egress_sg_from_port" {
  type        = list(number)
  description = "List of starting ports for sg egress rules"
}

variable "egress_sg_to_port" {
  type        = list(number)
  description = "List of ending ports for sg egress rules"
}

variable "egress_sg_protocol" {
  type        = list(any)
  description = "List of protocols for sg egress rules"
}

variable "egress_security_group_ids" {
  type        = list(string)
  default     = [ "sg-0fe4363da3994c100" ]
  description = "List of Security Group ids for sg egress rules "
}

variable "create_ingress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block ingress rules."
}

variable "create_ingress_sg" {
  type        = bool
  description = "Enable or disable Security Groups ingress rules."
}

variable "create_egress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}

variable "create_egress_sg" {
  type        = bool
  description = "Enable or disable Security Groups egress rules."
}

variable "environment" {
  type        = string
  description = "The environment name for the resources."
}

variable "owner" {
  type        = string
  description = "Owner's name for the resource."
}

variable "cost_center" {
  type        = string
  description = "Cost center identifier for the resource."
}

variable "application" {
  type        = string
  description = "Name of the application related to the resource"
}

variable "json_file_name" {
  type        = string
  description = "Name of the json file"
}