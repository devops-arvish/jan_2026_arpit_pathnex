variable "ami_id" {
  type = string
}
# variable "aws_region" {
#   type = string
# }
variable "instance_type" {
  type = string
}
variable "instance_name" {
  type = string
}
variable "instance_state" {
  type = string
  default = "running"

  validation {
    condition = contains(["running","stopped"],var.instance_state)
    error_message = "instance state must be running/stopped"  
    
  }
}