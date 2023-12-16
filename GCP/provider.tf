provider "google" {
version = "3.5.0"
credentials = file("./keys/compute-instance.json")
project = "playground-s-11-65249d9d"
region = "us-east1"
zone = "us-east1-b"
}