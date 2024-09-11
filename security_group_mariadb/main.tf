# 보안그룹 리소스 정의
resource "aws_security_group" "this" {
  name = var.sg_name
  description = var.sg_name

  ingress {  # 인바운드 규칙1
    description = "Allow MariaDB from anywhere"
    from_port = 3306
    to_port = 3306
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