# provider identity parameters
variable "api_fingerprint" {
  description = "fingerprint of oci api key"
  type        = string
}

variable "api_private_key_path" {
  description = "path to oci api private key used"
  type        = string
}

variable "region" {
  description = "the oci region where resources will be created"
  type        = string
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
}

# general oci parameters

variable "parent_compartment" {
  description = "compartment id where to create all resources"
  type        = string
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "FIN"
}

variable "subcompartments" {
  type    = any
  default = {}
}

#compartment parameters
variable "compartment_name" {
  description = "compartment id where to create all resources"
  type        = string
  default = "Retail_compartment"
}

variable "compartment_description" {
  description = "compartment id where to create all resources"
  type        = string
  default = "this contains all the retail resources"
}


#networking parameters
variable "vcn_cidr_blocks" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  default     = ["10.0.0.0/16"]
  type        = list(string)
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN"
  type        = string
}

variable "vcn_name" {
  type        = string
  default     = "retail-sydney-vcn"
}



variable "subnets" {
  type    = any
  default = {}
}
