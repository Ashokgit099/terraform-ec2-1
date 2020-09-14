terraform {
  backend "s3" {
    bucket = "shivajiiiiii"
    key    = "app/terraform/tf.state"
    region = "us-east-1"
  }
}
