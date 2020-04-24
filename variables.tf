variable "region" {
  description = "The region where the cloudant instance will be located. To get a list of all regions, run `ibmcloud is regions`."
  default = "eu-de"
}

variable "resource_group_name" {
  description = "The name of the resource group that the kubernetes cluster lives in."
  default = "bootcamp-2020-rg"
}

variable "cloudant_name" {
  description = "The name of the cloudant instance. Please use this format `cloundant2-<initials>`. Using default will fail!"
  default = "cloudant2-<initials>"
}
