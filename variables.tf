variable "get_cost" {
  description = "(Opt) Whether or not to show infra cost estimate. Requires installation of infracost cli and setting the API key value in `infracost_key` variable. Excepted values are 1 (true) or 0 (false)."
  default     = true
  type        = bool
}

variable "infracost_key" {
  description = "(Opt) API key for infracost. Required if get_cost set to 1."
  default     = 1
  type        = string
}
