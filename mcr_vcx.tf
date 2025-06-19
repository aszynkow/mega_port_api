resource "megaport_vxc" "syd_vxc1_mel" {
  product_name         = "mcr_syd_mcr_mel"
  rate_limit           = 1000
  contract_term_months = 12

  a_end = {
    requested_product_uid = megaport_mcr.mcr_syd.product_uid
    #ordered_vlan          = 0
  }

  a_end_partner_config = {

    partner      = "vrouter"

    vrouter_config = {

      interfaces = [
        {
          ip_addresses    = ["10.10.103.37/30"]
          bgp_connections = [
          {
            peer_asn         = 133937
            local_ip_address = "10.10.103.37"
            peer_ip_address  = "10.10.103.38"
             } 
                            ]
      } 
                  ]

      }
  }

  b_end = {
    requested_product_uid = megaport_mcr.mcr_mel.product_uid
    #ordered_vlan          = 0
  }

   b_end_partner_config = {

    partner      = "vrouter"

    vrouter_config = {

      interfaces = [
        {
          ip_addresses    = ["10.10.103.38/30"]
          bgp_connections = [
          {
            peer_asn         = 133937
            local_ip_address = "10.10.103.38"
            peer_ip_address  = "10.10.103.37"
             } 
                            ]
      } 
                  ]

      }
  
}
}
