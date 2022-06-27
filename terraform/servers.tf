resource "aws_instance" "debian11" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.pwernicki.id
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.custom_sg.id] 
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}
