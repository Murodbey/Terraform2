resource "aws_internet_gateway" "dev" {
  vpc_id = "${aws_vpc.dev.id}"

  tags {
    Env       = "${var.Env}${count.index +1}"
    Create_by = "${var.Created_by}"
  }
}
