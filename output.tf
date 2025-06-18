output port_syd_product_name {
    value = data.megaport_partner.primary_oci_port_syd.product_name
}

#output port_company_name_mel {
#    value = data.megaport_partner.primary_oci_port_mel.*
#}

output port_mel_product_name {
    value = data.megaport_partner.primary_oci_port_mel.product_name
}

output mcr_product_uid {
    value = megaport_mcr.mcr_mel.product_uid
}
