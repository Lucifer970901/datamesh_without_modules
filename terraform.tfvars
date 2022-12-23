tenancy_id = "ocid1.tenancy.oc1..aaaaaaaalylrk6bjiuxqryukd6jrlxgfbwjuulnavxqehvv3crknt7ewhlpa"
user_id = "ocid1.user.oc1..aaaaaaaaxtciqwuwtcvf37ef3oey5qunm27pns4gq2w56bxold73lstsmaeq"
api_fingerprint = "09:fd:0f:58:f5:d3:d0:c4:7d:f8:6a:a6:de:19:c2:fd"
api_private_key_path = "/data/oci_api_key.pem"
parent_compartment = "ocid1.compartment.oc1..aaaaaaaaukottugsmj5vmneywbzvecjbg5pew2b7clgnm53zwyvgdutdiwvq"
### Region
region="us-ashburn-1"
vcn_dns_label="fin"
#Sub compartments
subcompartments = {
  product_domain = {description = "compartment for product related resources",enable_delete="true"}
  customer_domain = {description = "compartment for customer related resources",enable_delete="true"}
  sales_domain = {description = "compartment for sales related resources",enable_delete="true"}
  dataOps_shared = {description = "compartment for dataOps related resources",enable_delete="true"}
  database = {description = "compartment for database related resources",enable_delete="true"}
  networking = {description = "compartment for networking related resources",enable_delete="true"}
  security = {description = "compartment for security related resources",enable_delete="true"}
}
