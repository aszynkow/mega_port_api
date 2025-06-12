variable "user" {
  type        = string
  description = "user name"
}

variable "password" {
  type        = string
  description = "password"
}

variable "mfa_key" {
  type        = string
  description = "MFA"
}

variable megaport_product_uid {
  default = ""
}

variable virtual_circuit_id {
  default = ""
}