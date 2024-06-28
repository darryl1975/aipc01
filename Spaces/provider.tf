variable "do_token" {}
variable "access_key" {}
variable "secret_key" {}

variable "region" {
  type    = string
  default = "sgp1"
}

provider "digitalocean" {
  token = var.do_token

  spaces_access_id  = var.access_key
  spaces_secret_key = var.secret_key
}
