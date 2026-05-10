resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
resource "aws_ec2_instance_state" "instance_state" {
  instance_id = aws_instance.ec2.id
  state = var.instance_state
}