data "aws_ami" "centos" {
  executable_users  = ["973714476881"]
  most_recent       = true
  name_regex        = "Centos-8-DevOps-Practice"
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}

variable "instance_type" {
  default =  "t3.small"

}
resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]


tags = {
    Name = "frontend"
  }
}



resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "user"
  }
}

resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type =  var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow-all.id ]

  tags = {
    Name = "payment"
  }
}