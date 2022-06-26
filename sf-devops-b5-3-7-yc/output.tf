output "access_key" {
  value = yandex_iam_service_account_static_access_key.sf_service_account_1_static_access_key.access_key
  sensitive = true
}

output "secret_key" {
  value = yandex_iam_service_account_static_access_key.sf_service_account_1_static_access_key.secret_key
  sensitive = true
}

output "internal_ip_address_sf_compute_instance_1" {
  value = yandex_compute_instance.sf_compute_instance_1.network_interface.0.ip_address
}

output "external_ip_address_sf_compute_instance_1" {
  value = yandex_compute_instance.sf_compute_instance_1.network_interface.0.nat_ip_address
}
