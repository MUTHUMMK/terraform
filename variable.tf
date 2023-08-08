# ec2 instance configuration

variable "os" {
    default = "ami-0f5ee92e2d63afc18"
}

variable "size" {
    default = "t2.micro"
}
variable "ec2-tags" {
    default = {
        Name = "MMK"
    }
}
variable "key" {
    default = "birth"
}


