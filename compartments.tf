resource "oci_identity_compartment" "Retail_compartment" {
    compartment_id = "${var.parent_compartment}"
    name = var.compartment_name
    description = var.compartment_description
    enable_delete = "true"
    
}

resource "oci_identity_compartment" "sub_compartments" {
    #Required   
    depends_on = [oci_identity_compartment.Retail_compartment]
     compartment_id = oci_identity_compartment.Retail_compartment.id
    
    for_each       = var.subcompartments    
  name    = lookup(each.value, "name", each.key)
  description     = each.value.description
  enable_delete= "true"
}
