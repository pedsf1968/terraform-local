variable "filename" {
  #type = set(string)
  type = list(string)
  default = [
    "/home/terraform/data/local/local_file_with_count/pets.txt",
   # "/home/terraform/data/local/local_file_with_count/cats.txt",
    "/home/terraform/data/local/local_file_with_count/dogs.txt"
  ]
}

variable "content" {
  #type = set(string)
  type = list(string)
  default = [
    "I love pets!",
    #"I love cats!",
    "I love dogs!"
  ]
}
