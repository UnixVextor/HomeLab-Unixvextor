resource "dns_a_record_set" "srv_prod_1" {
  zone      = "home.unixvextor.com."
  name      = "srv-prod-1"
  addresses = ["10.10.30.251"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_prod_1" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-prod-1"
  addresses = ["10.10.30.251"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_prod_2" {
  zone      = "home.unixvextor.com."
  name      = "srv-prod-2"
  addresses = ["10.10.30.250"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_prod_2" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-prod-2"
  addresses = ["10.10.30.250"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_prod_3" {
  zone      = "home.unixvextor.com."
  name      = "srv-prod-3"
  addresses = ["10.10.30.13"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_prod_3" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-prod-3"
  addresses = ["10.10.30.13"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "srv-demo-1"
  addresses = ["10.10.10.247"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-demo-1"
  addresses = ["10.10.10.247"]
  ttl       = 3600
}
resource "dns_a_record_set" "srv_demo_2" {
  zone      = "home.unixvextor.com."
  name      = "srv-demo-2"
  addresses = ["10.10.10.246"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_demo_2" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-demo-2"
  addresses = ["10.10.10.246"]
  ttl       = 3600
}
resource "dns_a_record_set" "srv_demo_3" {
  zone      = "home.unixvextor.com."
  name      = "srv-demo-3"
  addresses = ["10.10.10.13"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_demo_3" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-demo-3"
  addresses = ["10.10.10.13"]
  ttl       = 3600
}
