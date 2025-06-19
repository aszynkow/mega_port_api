output port_syd_product_name {
    value = data.megaport_partner.primary_oci_port_syd.product_name
}

#output port_company_name_mel {
#    value = data.megaport_partner.primary_oci_port_mel.*
#}

output port_mel_product_name {
    value = data.megaport_partner.secondary_oci_port_red_mel.product_name
}

output mcr_mel_product_uid {
    value = megaport_mcr.mcr_mel.product_uid
}

output mcr_syd_product_uid {
    value = megaport_mcr.mcr_syd.product_uid
}

output oci_vxc1_mel_a_config {
    value = megaport_vxc.oci_vxc1_mel.a_end_partner_config
}

output oci_vxc1_mel_b_config {
    value = megaport_vxc.oci_vxc1_mel.b_end_partner_config
}