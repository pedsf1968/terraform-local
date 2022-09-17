# variables declarations for main configuration file
# change the filename with your own path on variables.tf

variable "filename" {
   default = "/home/terraform/data/local/local_file_with_variables/pet.txt"
}

variable "content" {
  default = "I love pets!"
}