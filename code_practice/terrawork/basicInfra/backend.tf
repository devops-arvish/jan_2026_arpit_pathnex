terraform {
  backend "s3" {
    bucket = "arvish-backend-tf-state-alpha"
    key = "ec2-dev-09-05-2026/terraform.tfstate"
    region="ap-south-1"
    use_lockfile = true
  }
}
