resource "megaport_vxc" "oci_vxc1_mel" {
  product_name         = "fc1_mel"
  rate_limit           = 1000
  contract_term_months = 12

  a_end = {
    requested_product_uid = megaport_mcr.mcr_mel.product_uid
    ordered_vlan          = 0
  }

  a_end_partner_config = {

    partner      = "vrouter"

    vrouter_config = {

      interfaces = [
        {
          ip_addresses    = ["10.10.101.33/30"]
          bgp_connections = [
          {
            peer_asn         = 31898
            local_ip_address = "10.10.101.33"
            peer_ip_address  = "10.10.101.34"
             } 
                            ]
      } 
                  ]

      }
  }

  b_end = {
    requested_product_uid = data.megaport_partner.primary_oci_port_blue_mel.product_uid
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
      virtual_circuit_id = var.virtual_circuit_id_f1_mel
      ip_addresses     = ["10.10.101.33/30"]

        #bgp_connection = {
        #                   peer_asn           = 31898
         #                 local_ip_address   = "10.10.101.33/30"
          #               peer_ip_address    = "10.10.101.34/30"
           #         }
    }
  }
}

resource "megaport_vxc" "oci_vxc1_syd" {
  product_name         = "fc1_syd"
  rate_limit           = 1000
  contract_term_months = 12

  a_end = {
    requested_product_uid = megaport_mcr.mcr_syd.product_uid
    ordered_vlan          = 0
  }

  a_end_partner_config = {

    partner      = "vrouter"

    vrouter_config = {

      interfaces = [
        {
          ip_addresses    = ["10.10.102.37/30"]
          bgp_connections = [
          {
            peer_asn         = 31898
            local_ip_address = "10.10.102.37"
            peer_ip_address  = "10.10.102.38"
             } 
                            ]
      } 
                  ]

      }
  }

  b_end = {
    requested_product_uid = data.megaport_partner.primary_oci_port_syd.product_uid
  }

  b_end_partner_config = {
    partner = "oracle"
    oracle_config = {
      name          = "fc1_syd"
      #asn           = 64550
      #type          = "private"
      connect_type  = "Oracle"
      oracle_asn    = 31898
      local_ip_address   = "10.10.102.37/30"
      peer_ip_address    = "10.10.102.38/30"
      virtual_circuit_id = var.virtual_circuit_id_f1_syd
      ip_addresses     = ["10.10.101.37/30"]

        #bgp_connection = {
        #                   peer_asn           = 31898
         #                 local_ip_address   = "10.10.101.33/30"
          #               peer_ip_address    = "10.10.101.34/30"
           #         }
    }
  }
}