# Define variables
variable "service_name" {
  description = "Desired name for the provisioned resources"
  type        = string
  default     = "FileServices"
}

variable "service_location" {
  description = "The production resource locations to deploy"
  type        = map(any)
  default = {
    Prod = [
      "UK South"
    ]

    Prod_BCDR = [
      "North Central US"
    ]

    Dev = [
      "UK South"
    ]

    Dev_BCDR = [
      "North Central US"
    ]

    default = [
      "UK South"
    ]

    default_BCDR = [
      "North Central US"
    ]
  }
}

variable "service_deployment" {
  description = "Desired deployment identifier of the service collection of provisioned resources"
  type        = string
  default     = "01"
}

variable "service_recovery_services_location" {
  description = "The production resource locations to backup"
  type        = map(any)
  default = {
    Prod = [
      "UK South"
    ]

    Prod_BCDR = [
      "North Central US"
    ]

    Dev = [
      "UK South"
    ]

    Dev_BCDR = [
      "North Central US"
    ]

    default = [
      "UK South"
    ]

    default_BCDR = [
      "North Central US"
    ]
  }
}

variable "service_storage_sync_location" {
  description = "The resource locations for storage sync"
  type        = map(any)
  default = {
    Prod = [
      "UK South"
    ]

    Prod_BCDR = [
      "North Central US"
    ]

    Dev = [
      "UK South"
    ]

    Dev_BCDR = [
      "North Central US"
    ]

    default = [
      "UK South"
    ]

    default_BCDR = [
      "North Central US"
    ]
  }
}


variable "resource_name" {
  description = "Desired name for the provisioned resources"
  type        = map(string)
  default = {
    "FileServices" = "FS"
  }
}

variable "operating_system_platform" {
  description = "Desired OS for the provisioned resources"
  type        = string
  default     = "Windows"
}

variable "resource_instance_count" {
  description = "Desired number of the provisioned resources for each service environment"
  type        = map(any)
  default = {
    Prod = {
      "FileServices" = 2
    },

    Prod_BCDR = {
      "FileServices" = 1
    }

    Dev = {
      "FileServices" = 1
    },

    Dev_BCDR = {
      "FileServices" = 1
    }

    default = {
      "FileServices" = 2
    },

    default_BCDR = {
      "FileServices" = 1
    },
  }
}

variable "resource_recovery_services_instance_count" {
  description = "Desired number of the provisioned resources to backup in each service environment"
  type        = map(any)
  default = {
    Prod = {
      "FileServices" = 1
    },

    Prod_BCDR = {
      "FileServices" = 0
    }

    Dev = {
      "FileServices" = 1
    },

    Dev_BCDR = {
      "FileServices" = 0
    }

    default = {
      "FileServices" = 1
    },

    default_BCDR = {
      "FileServices" = 0
    },
  }
}

variable "resource_instance_size" {
  description = "Desired size for the provisioned resources for each service"
  type        = map(any)
  default = {
    Prod = {
      "FileServices" = "Standard_B1s"
    },

    Prod_BCDR = {
      "FileServices" = "Standard_B1s"
    }

    Dev = {
      "FileServices" = "Standard_B1s"
    },

    Dev_BCDR = {
      "FileServices" = "Standard_B1s"
    }

    default = {
      "FileServices" = "Standard_B1s"
    }

    default_BCDR = {
      "FileServices" = "Standard_B1s"
    }
  }
}

variable "resource_data_disk_count" {
  description = "Desired size for the provisioned resources for each service"
  type        = number
  default     = 0
}

variable "resource_data_disk_size" {
  description = "Desired disk size for the provisioned data disk resources"
  type        = number
  default     = 32
}

variable "resource_address_space" {
  description = "Desired address space for the provisioned resources"
  type        = map(string)
  default = {
    "UK South"         = "10.0.4.0/24"
    "North Europe"     = "10.2.4.0/24"
    "West Europe"      = "10.4.4.0/24"
    "North Central US" = "10.6.4.0/24"
  }
}

variable "resource_dns_servers" {
  description = "Desired DNS servers for the provisioned resources"
  type        = map(any)
  default = {
    "UK South" = [
      "10.0.2.4",
      "10.0.2.5"
    ]

    "North Europe" = [
      "10.2.2.4",
      "10.2.2.5"
    ]

    "West Europe" = [
      "10.4.2.4",
      "10.4.2.5"
    ]

    "North Central US" = [
      "10.6.2.4",
      "10.6.2.5"
    ]
  }
}

variable "resource_network_role" {
  description = "The network type for peering"
  type        = string
  default     = "spoke"
}

variable "resource_network_peer_role" {
  description = "The network type for peering"
  type        = string
  default     = "hub"
}

variable "resource_delete_protection_enabled" {
  description = "Whether 'soft delete' protection is enabled for backups"
  type        = bool
  default     = true
}

variable "resource_shutdown_enabled" {
  description = "Whether to shutdown the VMs at 11pm daily"
  type        = bool
  default     = true
}

variable "resource_automatic_backups_enabled" {
  description = "Whether to automatically backup specified instances"
  type        = bool
  default     = false
}

variable "provision_private_link" {
  description = "Whether to provision a private link for Azure file sync"
  type        = bool
  default     = false
}

variable "resource_network_peer_deployment" {
  description = "Deployment identifier for the resource network to peer"
  type        = string
  default     = "01"
}