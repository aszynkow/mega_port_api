resource "megaport_vxc" "oci_vxc" {
  product_name         = "Megaport VXC Example - OCI"
  rate_limit           = 1000
  contract_term_months = 12

  a_end = {
    requested_product_uid = var.megaport_product_uid
    ordered_vlan          = 0
  }

  b_end = {
    requested_product_uid = data.megaport_partner.primary_oci_port_mel.product_uid
  }

  b_end_partner_config = {
    partner = "oracle"
    oracle_config = {
      name          = "fc1_mel"
      #asn           = 64550
      #type          = "private"
      connect_type  = "Oracle"
      oracle_asn    = 31898
      local_ip_address   = "10.10.101.33/30"
      peer_ip_address    = "10.10.101.34/30"
      virtual_circuit_id = var.virtual_circuit_id
      ip_addresses     = ["10.10.101.33/30"]

        #bgp_connection = {
         #                   peer_asn           = 31898
          #                  local_ip_address   = "10.10.101.33/30"
           #                 peer_ip_address    = "10.10.101.34/30s
                    }
    #}
  }
}