# GLOBAL VARIABLES
variable "stage" {
  type        = "string"
  description = "The deploy environment in [prod, dev, preprod]"
}

variable "template_folder" {
  type        = "string"
  description = "Path to the template folder"
}

