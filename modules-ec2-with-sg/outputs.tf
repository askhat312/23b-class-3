output "instance_public_dns" {
    value = aws_instance.my_instance[*].ami
}
#resourse name,logical name and .attribute
#[*] coz we using count for intances it may create more then one