resource "oci_core_vcn" "Retail_vcn" {
    depends_on = [oci_identity_compartment.sub_compartments]
    compartment_id = oci_identity_compartment.sub_compartments.id
    cidr_blocks = var.vcn_cidr_blocks
    display_name = var.vcn_name
    dns_label = var.vcn_dns_label
}

resource "oci_core_subnet" "test_subnet" {
    #Required
    depends_on = [oci_identity_compartment.sub_compartments] 
    vcn_id = "${var.vcn_id}"    
     compartment_id = oci_identity_compartment.sub_compartments.id
    
    for_each       = var.subnets
  cidr_block     = each.value.cidr_block    
  display_name    = lookup(each.value, "name", each.key)
  prohibit_public_ip_on_vnic = lookup(each.value, "no_public_ip", each.key)
}
