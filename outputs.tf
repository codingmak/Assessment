output "Wordpress_Public_IP" {
  value = "${aws_eip.wordpress_eip.public_ip}"
}

output "Wordpress_DNS" {
  value = "${aws_instance.wordpress.public_dns}"
}
