resource "dns_ptr_record" "ptr_srv_1" {
  zone = "10.10.in-addr.arpa."
  name = "251.30"
  ptr  = "srv-prod-1.home.unixvextor.com."
  ttl  = 300
}

resource "dns_ptr_record" "ptr_srv_2" {
  zone = "10.10.in-addr.arpa."
  name = "250.30"
  ptr  = "srv-prod-2.home.unixvextor.com."
  ttl  = 300
}