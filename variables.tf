variable "local_ip"{
	type = "string"
}

variable "region" {
	type = "string"
}

variable "wordpress-images" {
	type = "map"

	default = {
		"us-east-1" = "ami-0dde0d915765e8fac"
	}
}
variable "zones" {
	type = "map"

	default = {
		"us-east-1" = "us-east-1d"
	}
}

