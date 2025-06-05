module "vpc"{
    source = "../../modules/vpc"
    vpc_cidr = "10.0.0.0/16"
    subnet_cidr = "10.0.1.0/24"
    subnet_az = "${var.aws_region}b"
    env = "prod"

}

module "ec2"{
    source = "../../modules/ec2"
    ami = "ami-0e35ddab05955cf57"
    type = "t2.micro"
    env = "prod"
    subnetId = module.vpc.subnet_id
    ec2_count = 3

}