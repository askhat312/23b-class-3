variable "ami" {
    description = "AWS ami"
    type = string
    default = "ami-09538990a0c4fe9be"
  
}
variable "instance_type" {
    description = "Type of ec2"
    type = string
    default = "t2.micro"
  
}
variable "instance_count" {
    description = "count of ec2"
    type = string
    default = "1"
  
}
variable "sg_name" {
    description = "aws security name"
    type = string
    default = "my-module-sg-name" #this name will be attached to securit name
  
}
variable "sg_description" {} 

#when its empty user forced to give descrition root tfvars will be inputed

variable "vpc_id" {}