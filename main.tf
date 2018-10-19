

# Install EC2 https://www.terraform.io/docs/providers/aws/r/instance.html


resource "aws_instance" "wordpress" {
  ami = "${lookup(var.wordpress-images, var.region)}"

  # free tier eligible
  instance_type = "t2.micro"

  # list of security groups for the instance
  security_groups = [
    "${aws_security_group.wordpress_security_group.name}",
  ]

  availability_zone = "${lookup(var.zones, var.region)}"

  key_name = "Assessment"

  # add a public IP address
  associate_public_ip_address = true

  root_block_device = {
    "volume_type"           = "standard"
    "volume_size"           = 40
    "delete_on_termination" = false
  }

   provisioner "remote-exec" {
        
  
        inline = [
            "sudo -s",
            "sudo yum update"   

        ]
        
        connection {
            type     = "ssh"
            user     = "ec2-user"
            private_key = "${file("~/Desktop/Assessment.pem")}"
           
            #password = "${var.root_password}"
            timeout = "10m"
        }
      }

  tags {
    Name = "Wordpress Instance"
  }
}

resource "aws_eip" "wordpress_eip" {
  instance = "${aws_instance.wordpress.id}"
}
