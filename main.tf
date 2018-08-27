provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

resource "aws_vpc" "stage" {
  cidr_block = "10.0.0.0/23"

  tags {
   Name = "stage-vpc"
  }
}

resource "aws_subnet" "public-2a" {
    vpc_id = "${aws_vpc.stage.id}"
    cidr_block = "10.0.0.0/28"

    tags {
     Name = "stage-vpc-public-2a"
    }
}

resource "aws_subnet" "public-2b" {
    vpc_id = "${aws_vpc.stage.id}"
    cidr_block = "10.0.0.16/28"
  
    tags {
     Name = "stage-vpc-public-2b"
    }
}

resource "aws_subnet" "public-2c" {
    vpc_id = "${aws_vpc.stage.id}"
    cidr_block = "10.0.0.32/28"

    tags {
     Name = "stage-vpc-public-2c"
    }
}