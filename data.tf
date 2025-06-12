data megaport_location equinix_sydney {
  name    = "Equinix SY1"
  #has_mcr = true
}

data megaport_location nextdc_mel{
  name    = "Equinix ME1"
  #has_mcr = true
}

data "megaport_partner" "primary_oci_port_mel" {
  connect_type   = "ORACLE"
  company_name   = "Oracle"
  product_name   = "OCI (ap-melbourne-1) (BMC)"
  diversity_zone = "red"
  location_id    = data.megaport_location.nextdc_mel.id
}

data "megaport_partner" "primary_oci_port" {
  connect_type   = "ORACLE"
  company_name   = "Oracle"
  product_name   = "OCI (ap-sydney-1) (BMC)"
  diversity_zone = "blue"
  location_id    = data.megaport_location.equinix_sydney.id
}
