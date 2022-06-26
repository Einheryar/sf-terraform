terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
  
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "sf-terraform-tfstates"
    region     = "ru-central1-b"
    key        = "infrastructure-sf-devops-b5-3-7/terraform.tfstate"
	
	skip_region_validation      = true
	skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
