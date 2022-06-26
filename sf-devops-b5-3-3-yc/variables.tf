variable "zone" {
  description = "Use specific availability zone"
  type = string
  default = "ru-central1-b"
}

variable "folder_id" {
  description = "Default folder ID in yandex cloud"
  type = string
  default = "<FOLDER_ID>"
}

variable "cloud_id" {
  description = "Default cloud ID in yandex cloud"
  type = string
  default = "<CLOUD_ID>"
}
