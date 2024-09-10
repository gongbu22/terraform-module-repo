# 다른 모듈에서 참조할 내용 정의
output "public_ip" {
  value = aws_instance.this.public_ip
}