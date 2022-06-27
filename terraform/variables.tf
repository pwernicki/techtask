variable "region" {
  description = "Value of the region"
  type        = string
  default     = "eu-central-1"
}

variable "availability_zone" {
  description = "Vaues of the availability zone name"
  type        = string
  default     = "eu-central-1a"
}

variable "creds_file" {
  description = "Value of the path to credentials file"
  type        = string
  default     = ".aws/credentials"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "scalac_debian"
}

variable "ami" {
  description = "Value of the Amazon Machine Images "
  type        = string
  default     = "ami-0a5b5c0ea66ec560d"
}

variable "instance_type" {
  description = "Value of the instance type"
  type        = string
  default     = "t2.micro"
}

variable "vpc_cidr" {
  description = "Value of the vps cidr"
  type        = string
  default     = "192.168.0.0/16"
}

variable "public_cidr" {
  description = "Value of the public subnet cidr"
  type        = string
  default     = "192.168.0.0/24"
}

variable "private_cidr" {
  description = "Value of the private subnet cidr"
  type        = string
  default     = "192.168.1.0/24"
}
