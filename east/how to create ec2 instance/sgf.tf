resource "aws_security_group" "AshokSG" {
  name        = "allow_tls"
  description = "ACreate a Security group for create a EC@ instance"
  vpc_id      = "default"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "[10.0.0.0/16]"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = "[10.0.0.0/16]"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "[10.0.0.0/16]"
    
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = "[10.0.0.0/16]"
  }
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = "[10.0.0.0/16]"
    }
}
