# variables declarations with variable for main configuration file
# we can't use variables un variables.tf

locals {
  filename = "${path.module}/pet.txt"
}