variable "aws_region" {
  description = "The aws region"
  type        = string
  #default     = "us-east-1"
}

/*variable "my_ami" {
  description = "The aws ami"
  type        = string
  default     = "ami-092b43193629811af"
}*/


variable "instance_type" {
  description = "The ec2 instance type"
  type        = string
  #default     = "t2.medium"
}

variable "instance_keypair" {
  description = "The ec2 key pair"
  type        = string
 # default     = "pipeline"
}

variable "ingressrules" {
  description = "ingress rules for our server"
  type        = list(any)
  #default     = ["0.0.0.0/0"]
}

variable "egressrules" {
  description = "egress rules for our server"
  type        = list(any)
  #default     = ["0.0.0.0/0"]
}

