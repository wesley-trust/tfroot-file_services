module "file_services" {
  for_each                  = toset(local.resource_locations)
  source                    = "github.com/wesley-trust/tfmodule-compute"
  service_environment       = terraform.workspace
  service_deployment        = var.service_deployment
  service_name              = var.service_name
  service_location          = each.value
  resource_name             = local.resource_name
  resource_instance_count   = local.resource_instance_count
  resource_instance_size    = local.resource_instance_size
  resource_data_disk_count  = var.resource_data_disk_count
  resource_data_disk_size   = var.resource_data_disk_size
  resource_address_space    = lookup(var.resource_address_space, each.value, null)
  resource_dns_servers      = lookup(var.resource_dns_servers, each.value, null)
  resource_network_role     = var.resource_network_role
  operating_system_platform = var.operating_system_platform
}

module "file_services_network_peering" {
  for_each                   = toset(local.resource_locations)
  source                     = "github.com/wesley-trust/tfmodule-network_peering"
  service_environment        = terraform.workspace
  resource_network_peer      = module.file_services[each.value].network_name
  resource_group_peer        = module.file_services[each.value].resource_group_name
  resource_network_peer_role = var.resource_network_peer_role
}

/* module "file_services_storage_sync" {
  for_each               = toset(local.resource_storage_sync_locations)
  source                 = "github.com/wesley-trust/tfmodule-storage_sync"
  service_environment    = terraform.workspace
  service_deployment     = var.service_deployment
  service_name           = "${var.service_name}-SS"
  service_location       = each.value
  resource_name          = local.resource_name
  #provision_private_link = true
} */

/* module "file_services_recovery_services" {
  depends_on                                  = [module.file_services]
  for_each                                    = toset(local.resource_recovery_services_locations)
  source                                      = "github.com/wesley-trust/tfmodule-recovery_services"
  service_environment                         = terraform.workspace
  service_deployment                          = var.service_deployment
  service_name                                = "${var.service_name}-RSV"
  service_location                            = each.value
  resource_name                               = local.resource_name
  resource_recovery_services_instance_count   = local.resource_recovery_services_instance_count
  resource_recovery_services_virtual_machines = module.file_services[each.value]
} */

module "file_services_bcdr" {
  for_each                  = toset(local.resource_bcdr_locations)
  source                    = "github.com/wesley-trust/tfmodule-compute"
  service_environment       = terraform.workspace
  service_deployment        = var.service_deployment
  service_name              = var.service_name
  service_location          = each.value
  resource_name             = local.resource_name
  resource_instance_count   = local.resource_bcdr_instance_count
  resource_instance_size    = local.resource_bcdr_instance_size
  resource_data_disk_count  = var.resource_data_disk_count
  resource_data_disk_size   = var.resource_data_disk_size
  resource_address_space    = lookup(var.resource_address_space, each.value, null)
  resource_dns_servers      = lookup(var.resource_dns_servers, each.value, null)
  resource_network_role     = var.resource_network_role
  operating_system_platform = var.operating_system_platform
}

module "file_services_network_peering_bcdr" {
  for_each                   = toset(local.resource_bcdr_locations)
  source                     = "github.com/wesley-trust/tfmodule-network_peering"
  service_environment        = terraform.workspace
  resource_network_peer      = module.file_services_bcdr[each.value].network_name
  resource_group_peer        = module.file_services_bcdr[each.value].resource_group_name
  resource_network_peer_role = var.resource_network_peer_role
}
