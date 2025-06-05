variable "vpc_cidr" {
    type = string
    description = "vpc cidr"
}
variable "subnet_cidr" {
    type = string
    description = "subnet cidr"
}

variable "env" {
    type = string
    description = "env"
}

variable "subnet_az" {
    type = string
    description = "subnet availability zone"
}