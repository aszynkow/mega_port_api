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
  default = "7d6c3458-65e7-4e3c-b364-127a8bb838c5"
}

variable virtual_circuit_id {
  default = "ocid1.virtualcircuit.oc1.ap-melbourne-1.aaaaaaaatb5ptxnmhhgwbdrfe7vz744v6ef4cu5jqjqno7j5lqiy5ahpzpwa"
}