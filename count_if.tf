variable env
{
  type="string"
}
variable dlist
{
   type="list"
   default= ["/dev/sdf","/dev/sdg","/dev/sdh","/dev/sdi"]
}

resource aws_instance "ec2"
{
  ami="ami-0d773a3b7bb2bb1c1"
  instance_type="t2.micro"
}
resource aws_ebs_volume "vollst"
{
   count="${var.env=="dev"?2:3}"
   availability_zone="${aws_instance.ec2.availability_zone}"
   size =10
   type ="gp2"
}

resource aws_volume_attachment "att"
{
  count="${var.env=="dev"?2:3}"
  volume_id = "${aws_ebs_volume.vollst.*.id[count.index]}"
  instance_id = "${aws_instance.ec2.id}"
  device_name ="${var.dlist[count.index]}"
  
}

