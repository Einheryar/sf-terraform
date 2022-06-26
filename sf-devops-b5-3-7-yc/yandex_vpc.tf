resource "yandex_vpc_network" "sf_devops_network_1" {
  description = "SF vpc network N1"
  name = var.sf_vpc_network_1_name
}

resource "yandex_vpc_subnet" "sf_devops_subnet_1" {
  description = "SF vpc subnet N1"
  name           = var.sf_vpc_subnet_1_name
  zone           = var.zone
  network_id     = yandex_vpc_network.sf_devops_network_1.id
  v4_cidr_blocks = ["192.168.1.0/24"]
}
