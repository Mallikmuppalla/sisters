/*resource aws_ebs_volume "vol"
{
   count=2
   size=10
   availability_zone="ap-south-1a"
   type="gp2"
}
resource aws_eip "testeip"
{
   count=0
}
output "volids"
{
   value = "${aws_ebs_volume.vol.*.id[0]}"
}
*/

