variable "zone" {
  description = "Use specific availability zone"
  type = string
  default = "ru-central1-b"
}

variable "token" {
  description = "Default OAuth token in yandex cloud"
  type = string
  default = "<TOKEN>"
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

variable "public_key_path" {
  description = "Path to ssh public key, which would be used to access workers"
  default     = "<.RelPath>/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to ssh private key, which would be used to access workers"
  default     = "<.RelPath>/id_rsa"
}

variable "sf_service_account_1_name" {
  description = "SF service account N1 name in yandex cloud"
  type = string
  default = "<SERVICE_ACCOUNT_NAME>"
}

variable "sf_bucket_1_name" {
  description = "SF bucket N1 name in yandex cloud"
  type = string
  default = "<BUCKET_NAME>"
}

variable "sf_vpc_network_1_name" {
  description = "SF vpc network N1 name in yandex cloud"
  type = string
  default = "<VPC_NETWORK_NAME>"
}

variable "sf_vpc_subnet_1_name" {
  description = "SF vpc subnet N1 name in yandex cloud"
  type = string
  default = "<VPC_SUBNET_NAME>"
}

variable "sf_compute_instance_1_image_id" {
  description = "SF compute instance N1 LEMP image ID in yandex cloud - lemp-v20220606"
  type = string
  default = "<INSTANCE_IMAGE_ID>"
}

variable "sf_compute_instance_1_name" {
  description = "SF compute instance N1 name in yandex cloud"
  type = string
  default = "<INSTANCE_NAME>"
}

variable "user" {
  description = "SF VM Admin"
  type = string
  default = "<USER>"
}

variable "user_password" {
  description = "SF VM Admin Password"
  type = string
}
