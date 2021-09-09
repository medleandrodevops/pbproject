provider "aws" {
	#access_key  = "${var.access_key}"
	#secret_key  = "${var.secret_key}"
	#region      = "${var.region}"
}

resource "aws_instance" "terra" {
	ami = "ami-09e67e426f25ce0d7"
	availability_zone = "us-east-1c"
	instance_type = "t2.micro"
	key_name = "${var.key_name}"
	vpc_security_group_ids = ["${aws_security_group.terra.id}"]
	subnet_id = "${aws_subnet.public-subnet-in-us-east-1.id}"
	associate_public_ip_address = true
	source_dest_check = false	
}

output "public_ip" {
	value = "${aws_instance.terra.public_ip}"
	description = "The public IP of the web server"
}

output "app_addess" {
	value = "${var.app_port}"
}