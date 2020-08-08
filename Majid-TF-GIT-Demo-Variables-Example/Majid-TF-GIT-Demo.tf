provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance" "Maj-Ubuntu-Instance" {
    instance_type = "t2.micro"
    ami = "ami-00f6a0c18edb19300"

    provisioner "local-exec" {
        command = "echo ${self.public_ip} > ../../ip_address.txt"
    }
}