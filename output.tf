output port_company_name {
    value = data.megaport_partner.primary_oci_port.company_name
}

#output port_company_name_mel {
#    value = data.megaport_partner.primary_oci_port_mel.*
#}

output port_mel_product_name {
    value = data.megaport_partner.primary_oci_port_mel.product_name
}
