variable "bucket_name" {
  default = "terraform-state-bucket"
}

variable "dynamodb_table" {
  default = "terraform-locks"
}
