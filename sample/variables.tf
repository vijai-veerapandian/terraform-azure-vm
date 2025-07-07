// Application Name
# Application NAme
/* Application name
*/

variable "app_name" {
  type = string

  validation {
    condition     = length(var.app_name) <= 12
    error_message = "app name should be equal or less then 12 characters"
  }

}

variable "environment_name" {
  type = string
}

variable "api_key" {
  type      = string
  sensitive = true
}

variable "instance_count" {
  type = number

  validation {
    condition     = var.instance_count >= 1 && var.instance_count <= 10
    error_message = "instance count should be between 1 and 10"
  }

}

variable "enabled" {
  type = bool
}

variable "regions" {
  type = list(any)
}

variable "region_instance_count" {
  type = map(string)
}

variable "region_set" {
  type = set(string)
}

variable "object_settings" {
  type = object({
    kind = string
    tier = string
  })
}
