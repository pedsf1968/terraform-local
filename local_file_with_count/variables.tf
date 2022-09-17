variable "filename" {
  type = list(string)
  default = [
    "/home/terraform/data/local/local_file_with_count/pets.txt",
    "/home/terraform/data/local/local_file_with_count/cats.txt",
    #"/home/terraform/data/local/local_file_with_count/dogs.txt",
    "/home/terraform/data/local/local_file_with_count/fish.txt"
  ]
}

variable "content" {
  type = list(string)
  default = [
    "I love pets!",
    "I love cats!",
    #"I love dogs!",
    "I love fish too!"
  ]
}
