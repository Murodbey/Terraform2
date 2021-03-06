resource "aws_subnet" "dev1" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/24"

  tags {
    Env       = "${var.Env}${count.index +1}"
    Create_by = "${var.Created_by}"
  }
}

resource "aws_subnet" "dev2" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/24"

  tags {
    Env       = "${var.Env}${count.index +1}"
    Create_by = "${var.Created_by}"
  }
}
