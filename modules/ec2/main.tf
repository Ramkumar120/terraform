resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.type 
  subnet_id     = var.subnetId
  count         = var.ec2_count

  tags = {
    Name = "${var.env}-ec2-${count.index}"
    env = var.env
  }
}