variable "name" {
  type        = string
  description = "Name of the Application Gateway."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where Application Gateway will be deployed."
}

variable "location" {
  type        = string
  description = "Azure region for the Application Gateway."
}

variable "subnet_id" {
  type        = string
  description = "Subnet resource ID dedicated to Application Gateway."
}

variable "private_frontend_ip_address" {
  type        = string
  description = "Static private frontend IP address for Application Gateway."
}

variable "ssl_certificate_secret_id" {
  type        = string
  description = "Key Vault secret ID containing the TLS certificate for HTTPS listener."
}

variable "backend_ip_addresses" {
  type        = list(string)
  description = "Backend private IP addresses for the backend address pool."
}

variable "backend_port" {
  type        = number
  description = "Backend service port used by backend HTTP settings."
  default     = 80
}

variable "backend_protocol" {
  type        = string
  description = "Protocol for backend HTTP settings. Allowed values are Http or Https."
  default     = "Http"

  validation {
    condition     = contains(["Http", "Https"], var.backend_protocol)
    error_message = "backend_protocol must be either Http or Https."
  }
}

variable "backend_path" {
  type        = string
  description = "Path to use when forwarding traffic to backend."
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
  description = "Optional host name for both listeners."
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

variable "min_capacity" {
  type        = number
  description = "Minimum autoscale capacity."
  default     = 1
}

variable "max_capacity" {
  type        = number
  description = "Maximum autoscale capacity."
  default     = 2
}

variable "tags" {
  type        = map(string)
  description = "Resource tags."
  default     = {}
}

variable "capacity" {
  type        = number
}