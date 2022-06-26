resource "yandex_iam_service_account" "sf_service_account_1" {
  description = "Service account to manage VMs"
  folder_id   = var.folder_id
  name        = var.sf_service_account_1_name
}

resource "yandex_iam_service_account_static_access_key" "sf_service_account_1_static_access_key" {
  description        = "Service account static access key to manage VMs"
  service_account_id = yandex_iam_service_account.sf_service_account_1.id
}

resource "yandex_resourcemanager_folder_iam_member" "service_account_1_role_editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.sf_service_account_1.id}"
}