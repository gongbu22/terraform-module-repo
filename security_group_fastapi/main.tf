resource "aws_security_group" "this" {
  name = var.sg_name
  description = var.description

  ingress {  # 인바운드 규칙1
    description = "Allow FastAPI from anywhere"
    from_port = 8000
    to_port = 8000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {  # 인바운드 규칙2
    description = "Allow SSH from anywhere"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {   # 아웃바운드 규칙
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}