# project     = var.project_id
#   region      = var.region
#   zone        = var.zone
#   credentials = var.credentials

variable "project_id" {
  type        = string
  description = "The project ID to deploy resources"
  default     = "armageddon-423300" #0
}

variable "region" {
  type        = string
  description = "The region to deploy resources"
  default     = "us-east1" #1
}

variable "zone" {
  type        = string
  description = "The zone to deploy resources"
  default     = "us-east1-b" #2
}

variable "credentials" {
  type        = string
  description = "The path to the service account key file"
  default     = "armageddon-423300-5da3f122c3bb.json" #3
}

variable "location" {
  type        = string
  description = "The location to deploy resources"
  default     = "US" #4
}

variable "google_bucket_url" {
  type        = string
  description = "Google storage bucket URL"
  default     = "https://storage.googleapis.com/" #5
}

variable "Itphil231" {
  type = list(string)
  description = "Grouping all the variables"
  default =  ["armageddon-423300","us-east1","us-east1-b",
  "armageddon-423300-5da3f122c3bb.json","US","https://storage.googleapis.com/"] 
}

output "bucket_url" {
  value = "${var.Itphil231[5]}${google_storage_bucket.itphil231.name}/index.html"
}