terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27" // versão utilizada no treinamento Alura
    }
  }
 
  required_version = ">= 0.14.9" // versão utilizada no treinamento Alura

  
}

provider "aws" {
  region  = "us-west-2" // Região Oregon EUA
}
 
resource "aws_instance" "app_server" {
  ami           = "ami-0cf2b4e024cdb6960" //Ubuntu server que peguei na AWS
  instance_type = "t2.micro" // Tipo da instância t2.micro
  key_name = "iac-alura"
 
  tags = {
    Name = "Primeira instancia" //Nome da instância
  }
}