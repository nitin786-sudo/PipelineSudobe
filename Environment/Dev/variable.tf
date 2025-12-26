variable "Subscription_ID" {
  type        = string
}

variable "rg_names" {
    type = map(any)
}

variable "stg" {
    type = map(any)
}

variable "vnet" {
    type = map(any)
}

variable "subnet" {
    type = map(any)
}

variable "pip" {
type = map(any)
}

variable "vm" {
    type = map(any)
}