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

resource "dns_a_record_set" "wild_card_srv_prod_2" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-prod-2"
  addresses = ["10.10.30.250"]
  ttl       = 3600
}