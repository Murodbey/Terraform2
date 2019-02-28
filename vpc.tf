resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"

  tags {
    Env       = "${var.Env}${count.index +1}"
    Create_by = "${var.Created_by}"
  }
}
