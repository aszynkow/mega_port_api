resource "megaport_mcr" "mcr_mel" {
  product_name         = "mcr_mel"
  port_speed           = 2500
  location_id          = data.megaport_location.nextdc_mel.id
  contract_term_months = 12
}

resource "megaport_mcr" "mcr_syd" {
  product_name         = "mcr_syd"
  port_speed           = 2500
  location_id          = data.megaport_location.equinix_sydney.id
  contract_term_months = 12
}