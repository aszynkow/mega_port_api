terraform {
  required_providers {
    megaport = {
      source = "megaport/megaport"#"local/megaport"
      version = "~> 1.3"#"0.2.9"#"">=0.1.4"
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