resource "digitalocean_spaces_bucket" "darrylstorage" {
  name   = "darryl1975"
  region = "nyc3"
}

resource "digitalocean_spaces_bucket_cors_configuration" "test" {
  bucket = digitalocean_spaces_bucket.darrylstorage.id
  region = "nyc3"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST", "DELETE"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }
}
