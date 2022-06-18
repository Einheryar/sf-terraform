terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = file("E:\\Terraform\\sf-devops-b5-3-3-yc-v1\\einheryar-yc-key.json")
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

data "template_file" "ansible_inventory" {
  template = file("${path.module}/inventory.ini.tpl") # Путь до шаблона на локальном компьютере
  vars = {
	webserver-1 = "foo.example.com" # Переменные, которые передаем в наш шаблон.
	webserver-2 = "bar.example.com"
	dbserver-1 = "one.example.com"
	dbserver-2 = "two.example.com"
	dbserver-3 = "three.example.com"
	ansible_ssh_private_key_file = "~/.ssh/git.pem"
	ansible_ssh_user = "ubuntu"
  }
}

# Записываем сгенерированный шаблон в файл
resource "null_resource" "update_inventory" {
  triggers = { # Код будет выполнен, когда inventory будет сгенерирован
    template = data.template_file.ansible_inventory.rendered
  }
  provisioner "local-exec" { # выполняем команду на локальной машине
    command = "echo '${data.template_file.ansible_inventory.rendered}' > inventory.ini"
	interpreter = ["PowerShell", "-Command"]
  }
   provisioner "local-exec" { # выполняем команду на локальной машине
    command = "Get-Date > completed.txt"
	interpreter = ["PowerShell", "-Command"]
  }
}
