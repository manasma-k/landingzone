variable "environment" {
  type        = string
  default     = "dev"
}

variable "name" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "private_frontend_ip_address" {
  type        = string
}

variable "ssl_certificate_secret_id" {
  type        = string
}

variable "backend_ip_addresses" {
  type        = list(string)
}

variable "backend_port" {
  type        = number
}

variable "backend_protocol" {
  type        = string

  validation {
    condition     = contains(["Http", "Https"], var.backend_protocol)
    error_message = "backend_protocol must be either Http or Https."
  }
}

variable "backend_path" {
  type        = string
  default     = "/"
}

variable "backend_host_name" {
  type        = string
  description = "Optional host header value sent to backend."
  default     = null
}

variable "pick_host_name_from_backend_address" {
  type        = bool
  description = "Whether to pick host name from backend address."
  default     = false
}

variable "listener_host_name" {
  type        = string
  description = "Optional host name for listeners."
  default     = null
}

variable "http_port" {
  type        = number
  description = "Frontend HTTP listener port."
  default     = 80
}

variable "https_port" {
  type        = number
  description = "Frontend HTTPS listener port."
  default     = 443
}

variable "request_timeout" {
  type        = number
  description = "Request timeout in seconds for backend HTTP settings."
  default     = 30
}

variable "sku_name" {
  type        = string
  description = "Application Gateway SKU name."
  default     = "Standard_v2"
}

variable "sku_tier" {
  type        = string
  description = "Application Gateway SKU tier."
  default     = "Standard_v2"
}

variable "tags" {
  type        = map(string)
  description = "Additional resource tags."
  default     = {}
}

variable "capacity" {
  type        = number
  description = "Minimum autoscale capacity."
  default     = {}
}
