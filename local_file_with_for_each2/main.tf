resource "local_file" "pet" {
  filename = "/home/terraform/data/local/local_file_with_for_each2/${each.value}.txt"
  content = each.value

  for_each = toset(var.region)
}

variable "region" {
  type = list(string)
  default = [
    "eu-west-3",
    "eu-west-3",
    "us-east-1",
    "ca-central-1"
  ]
  description = "List of AWS regions"
}

variable "num" {
  type = set(number)
  default = [ 250, 10, 11, 5 ]
  description = "A set of numbers"
}

variable "ami" {
  type = string
  default = "ami-xyz,AMI-ABC,ami-efg"
  description = "A string containing ami"
}

variable "ami-list" {
  type = list
  default = [ "ami-xyz", "AMI-ABC", "ami-efg" ]
  description = "A list of strings containing ami"
}

variable "ami-map" {
  type = map
  default = {
    "eu-west-3" = "ami-xyz", 
    "eu-central-1" = "AMI-ABC",
    "ap-south-1" = "ami-efg" 
  }
  description = "A map of AMI for specific regions"
}

variable "special" {
  type = bool
  default = true
  description = "Set to true by default"
}

variable "a" {
  type = number
  default = 30
}

variable "b" {
  type = number
  default = 25
}
