resource aws_instance "user"
{
  ami="ami-0d773a3b7bb2bb1c1"
  instance_type="t2.micro"
  user_data="${file("./1.txt")}"
  tags=
  {
    "env" = "dev"
	"application" ="Sheshi"
	"createdby" = "terraform"
  }
  
}
