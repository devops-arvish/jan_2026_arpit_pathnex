
module "ec2_instance" {
  source = "./modules/ec2"

  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  instance_state = var.instance_state
}
