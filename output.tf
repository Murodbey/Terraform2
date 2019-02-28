output "IP" {
  value = "${aws_instance.example.*.public_ip}"
}

output "vpc_id" {
  value       = "${aws_vpc.dev.*.id}"
}

output "subnet_id_dev1" {
	value = "${aws_subnet.dev1.*.id}"
}

output "subnet_id_dev2" {
        value = "${aws_subnet.dev2.*.id}"
}

