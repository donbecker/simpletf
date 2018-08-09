provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "stage" {
  cidr_block = "10.0.0.0/23"

  tags {
   Name = "stage-vpc"
  }
}

resource "aws_subnet" "public-2a" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-2a"
    cidr_block = "10.0.0.0/28"

    tags {
     Name = "stage-vpc-public-2a"
    }
}

resource "aws_subnet" "public-2b" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-2b"
    cidr_block = "10.0.1.0/28"
  
    tags {
     Name = "stage-vpc-public-2b"
    }
}

resource "aws_subnet" "public-2c" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-2c"
    cidr_block = "10.0.2.0/28"

    tags {
     Name = "stage-vpc-public-2c"
    }
}