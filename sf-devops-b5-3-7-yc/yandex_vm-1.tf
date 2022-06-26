data "yandex_compute_image" "sf_devops_image_lemp_1" {
  family = "lemp"
}

resource "yandex_compute_instance" "sf_compute_instance_1" {
  name = var.sf_compute_instance_1_name

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    mode = "READ_WRITE"
    initialize_params {
      image_id = data.yandex_compute_image.sf_devops_image_lemp_1.id
	  type = "network-ssd"
      size = 10
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.sf_devops_subnet_1.id
    nat       = true
  }

  metadata = {
	ssh-keys = "ubuntu:${file("${path.module}/${var.public_key_path}")}"
  }

}
