provider "ibm" {
  ibmcloud_timeout = 300
  region = "${var.region}"
}

# Clouddant
# ibmcloud catalog service-marketplace | grep cloudant
# ibmcloud catalog service cloudantnosqldb | grep plan
resource "ibm_resource_instance" "cloudant_svc" {
    name              = "${var.cloudant_name}"
    service           = "cloudantnosqldb"
    plan              = "standard"
    location          = "${var.region}"
    resource_group_id = "${data.ibm_resource_group.rgroup.id}"
}

#
# Extract the resource group ipd
# (From an imperative perspective this should be done before being able to setup the cloudant
# however this is not needed in a declerative setup - as long as it happens "somewhere" )

data "ibm_resource_group" "rgroup" {
  name = "${var.resource_group_name}"
}
