resource "dns_ptr_record" "ptr_srv_prod_1" {
  zone = "10.10.in-addr.arpa."
  name = "251.30"
  ptr  = "srv-prod-1.home.unixvextor.com."
  ttl  = 300
}

resource "dns_ptr_record" "ptr_srv_prod_2" {
  zone = "10.10.in-addr.arpa."
  name = "250.30"
  ptr  = "srv-prod-2.home.unixvextor.com."
  ttl  = 300
}

resource "dns_ptr_record" "ptr_srv_prod_3" {
  zone = "10.10.in-addr.arpa."
  name = "13.30"
  ptr  = "srv-prod-3.home.unixvextor.com."
  ttl  = 300
}

resource "dns_ptr_record" "ptr_srv_demo_1" {
  zone = "10.10.in-addr.arpa."
  name = "247.10"
  ptr  = "srv-demo-1.home.unixvextor.com."
  ttl  = 300
}
resource "dns_ptr_record" "ptr_srv_demo_2" {
  zone = "10.10.in-addr.arpa."
  name = "246.10"
  ptr  = "srv-demo-2.home.unixvextor.com."
  ttl  = 300
}
resource "dns_ptr_record" "ptr_srv_demo_3" {
  zone = "10.10.in-addr.arpa."
  name = "13.10"
  ptr  = "srv-demo-3.home.unixvextor.com."
  ttl  = 300
}
