terraform {
  required_providers {
    megaport = {
      source = "local/megaport"#"megaport/megaport"
      version = "0.2.9"#"~> 1.3"#"1.0.0" #">=0.1.4"
    }
  }
}

provider "megaport" {
    access_key               = var.user
    secret_key               = var.password
    #mfa_otp_key             = var.mfa_key
    accept_purchase_terms   = true
    #delete_ports            = true
    environment             = "production"

}