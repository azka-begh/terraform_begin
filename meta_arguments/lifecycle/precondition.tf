resource "aws_instance" "example" {
 instance_type = "t2.micro"
 ami           = "ami-0742a572c2ce45ebf"

 lifecycle {
   # The AMI ID must refer to an AMI that contains an operating system for the `x86_64` architecture.
   precondition {
     condition     = data.aws_ami.example.architecture == "x86_64"
     error_message = "The selected AMI must be for the x86_64 architecture."
   }
 }
}
