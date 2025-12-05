resource "yandex_storage_object" "picture" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = local.bucket_name
  key    = "bp"
  source = "~/works&projects/homework/clopro-homeworks-15.2/bp.jpg"
  acl = "public-read"
  depends_on = [yandex_storage_bucket.my_bucket]
}