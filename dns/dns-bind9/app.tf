resource "dns_a_record_set" "db_prod_1" {
  zone = "home.unixvextor.com."
  name = "db-prod-1"
  addresses = [
    "10.10.30.251"
  ]
  ttl = 3600
}
resource "dns_a_record_set" "db_prod_2" {
  zone = "home.unixvextor.com."
  name = "db-prod-2"
  addresses = [
    "10.10.30.251"
  ]
  ttl = 3600
}