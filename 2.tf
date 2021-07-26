resource aws_instance "newec2"
{
  ami="ami-0d773a3b7bb2bb1c1"
  instance_type="t2.micro"
}
resource aws_ebs_volume "newvol"
{
  size=11
  type="gp2"
  availability_zone="${aws_instance.newec2.availability_zone}"
}

resource aws_eip "myeip"
{
}