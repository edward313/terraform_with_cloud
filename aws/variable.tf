variable "name" {

  description = "Name of the instance"
  default     = "edward"
}

variable "region" {
  description = "Region to deploy the instance"
  default     = "us-east-1"
}


#   access_key = "AWS_ACCESS_KEY"
#   secret_key = "AWS_ACCESS_KEY"

variable "access_key" {
  description = "AWS_ACCESS_KEY"
  default     = "AKIA6F6YM5BOLHZDNGVX"
}

variable "secret_key" {
  description = "AWS_SECRET_KEY"
  default     = "8xDqCoJmy/i57UHeK4xwRVfFpr5eDIbKsIXldpwE"
}


variable "ami" {
  description = "ami"
  default     = "ami-0fc5d935ebf8bc3bc"
}
