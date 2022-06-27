resource "aws_key_pair" "pwernicki" {
  key_name   = "pwernicki-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCJ4wazDsGfPpIhRhNyfJs6bKkyOdegXJCkpL2u25bYTVFKx1r29jce9/SUdV93h5baNTrmuHcXZhH9xQn38FdABTru4unta+VobgWfFYBBNm7LrQmy85AmJPfp7KIJXytAqRPGFyUYAaEBea6QO5I7B7EG/EuXIoNrBUs2Z2YkuIbg0sTytcUCpQGRVc5Owcni+Ae2Y8y2Tvj0cIolf/WNDJaOEEH2OYGFFL9UoTiL9JGB/6exWjn8a6yHMWJqce/8zMh1OhLVc1odPIGNN0jwaxsvEecjlnsanND8U/kR0AcVnGFl9lHGEaRjvXwH3NLufff+7O6YfRY9VzgYfR/ox2nfUhLHF7F+AzJhEpkIxc2sn049CTc5fpUR7ybDp82vWfr1zyOVQ+5/IbslNbY5jAT1r1Cxpbc07LRZEPq1kBdJymS5ltNIymYCtc2drVeJVeCE9TFOYJtC7AuJ8RNzyGjABi9mBx4iXXxho0SFT+UnEnPmjBjMuvPrJ1lceTU= pwernicki@fedora"
}

resource "aws_security_group" "custom_sg" {
  vpc_id = aws_vpc.custom_vpc.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 8088
    to_port = 8088
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
