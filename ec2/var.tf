variable "instance_type" {
  description = "Type of ec2 instance"
  type        = string
  default     = "t2-micro"
}

variable "ami" {
  description = "ami id"
  type        = string
  default     = "ami-0eb5f3f64b10d3e0e"
}

variable "securitygroup" {
  description = "securitygroup id"
  type        = string
  default     = "sg-0de1a449223c088cf"
}

variable "subnet" {
  description = "subnet id"
  type        = string
  default     = "subnet-d5295ff4"
}

variable "ec2_tags" {
  description = "Tags to apply to resources created by ec2 module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
