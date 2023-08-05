resource "aws_instance" "my_instance" {
    instance_type = var.instance_type
    ami = var.ami
    count = var.instance_count
    tags = {
      Name = "TF-instance-${count.index+1}"
    }
    vpc_security_group_ids = [aws_security_group.web_sg.id] #.id assocites or attaches
    #aws_security group
}

#Security Group https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule
#Reguired
#fromport
#protocol
#securitygroupid
#toport
#type ingress
#it will go under  ec2 resoure (aws_security_group) with .id

resource "aws_security_group" "web_sg" {
  name =var.sg_name #define var under module var.tf 
  description = var.sg_description #it was fixed var.sg_description
  vpc_id = var.vpc_id   

  ingress {
    description = "HTTP over 80"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 }

 #now need to attach security group to ec2 instance (was_security_group.id)



