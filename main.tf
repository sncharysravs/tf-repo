provider "aws"{
        region = "ap-northeast-1"
}

terraform {
       backend "s3"{
               bucket = "tf-new-buckets"
               key = "terraform.tfstate"
	       region = "ap-northeast-1"
             }  
}
 resource "aws_instance" "inst"{
	ami = "ami-0ed99df77a82560e6"
	instance_type ="t2.micro"
	tags = {
		Name = "dev_inst"
	}
}


