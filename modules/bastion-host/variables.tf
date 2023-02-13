# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed.
# ---------------------------------------------------------------------------------------------------------------------

variable "tag" {
  description = "The GCP network tag to apply to the bastion host for firewall rules. Defaults to 'public', the expected public tag of this module."
  type        = string
  default     = "public"
}

variable "machine_type" {
  description = "The machine type of the instance."
  type        = string
  default     = "t2a-standard-1"
}

variable "source_image" {
  description = "The source image to build the VM using. Specified by path reference or by {{project}}/{{image-family}}"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts-arm64"
}

variable "startup_script" {
  description = "The script to be executed when the bastion host starts. It can be used to install additional software and/or configure the host."
  type        = string
  default     = ""
}

variable "static_ip" {
  description = "A static IP address to attach to the instance. The default will allocate an ephemeral IP"
  type        = string
  default     = null
}
