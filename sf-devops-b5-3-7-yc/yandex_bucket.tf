resource "yandex_storage_bucket" "sf_devops_bucket_1" {
  access_key = yandex_iam_service_account_static_access_key.sf_service_account_1_static_access_key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sf_service_account_1_static_access_key.secret_key
  bucket = var.sf_bucket_1_name
}