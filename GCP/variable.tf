variable "name" {
   
  description = "Name of the instance"
  default     = "edward"
}

variable "region" {
  description = "Region to deploy the instance"
  default     = "us-central1"
}





variable "ssh_key" {
  description = "Public SSH key for the instance"
  default     = "./keys/id_rsa.pub"
}

## Optional Vars ##
variable "instance_size" {
  description = "Compute instance size"
  default     = "f1-micro"
}

variable "zone" {
  description = "Availability Zone for the instance"
  default     = "us-central1-c"
}

variable "public_ip" {
  description = "Set to true to assign a public IP to the instance"
  default     = false
}

variable "cloud_init_data" {
  description = "User-data config"
  default     = ""
  type        = string
}

variable "tags" {
  description = "Additional tags in a comma separated list"
  default     = "null"
  type        = string
}