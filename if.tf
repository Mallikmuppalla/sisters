/*variable env
{
  type="string"
  
}
resource aws_instance "ec2"
{
  ami="ami-0d773a3b7bb2bb1c1"
  instance_type="t2.micro"
}
resource aws_ebs_volume "addvol"
{
  count= "${var.env=="prod"?1:0}"
   size=10
   availability_zone="${aws_instance.ec2.availability_zone}"
   type="gp2"
}
resource aws_volume_attachment "test1"
{
     count= "${var.env=="prod"?1:0}"
    instance_id = "${aws_instance.ec2.id}"
	volume_id ="${aws_ebs_volume.addvol.id}"
	device_name="/dev/sdf"
}*/