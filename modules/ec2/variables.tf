variable "ami" {
  type = string
  description = "instance ami id"
}

variable "type" {
    type = string
    description = "instance type"
}

variable "env" {
    type = string
    description = "instance tag"
}

variable "subnetId" {
    type = string
    description = "subnet-id"
}

variable "ec2_count" {
    type = number
    description = "ec2 count"
}