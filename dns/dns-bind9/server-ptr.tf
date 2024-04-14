resource "dns_ptr_record" "ptr_srv_1" {
  zone = "10.10.in-addr.arpa."
  name = "251.30"
  ptr  = "srv-prod-1.unixvextor.com."
  ttl  = 300
}