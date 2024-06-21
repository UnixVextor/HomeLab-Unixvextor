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
resource "dns_a_record_set" "srv_prod_4" {
  zone      = "home.unixvextor.com."
  name      = "srv-prod-4"
  addresses = ["10.10.30.14"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_prod_4" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-prod-4"
  addresses = ["10.10.30.14"]
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

resource "dns_a_record_set" "srv_demo_4" {
  zone      = "home.unixvextor.com."
  name      = "srv-demo-4"
  addresses = ["10.10.10.14"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_srv_demo_4" {
  zone      = "home.unixvextor.com."
  name      = "*.srv-demo-4"
  addresses = ["10.10.10.14"]
  ttl       = 3600
}

resource "dns_a_record_set" "kube_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "kube-demo-1"
  addresses = ["10.10.10.30"]
  ttl       = 3600
}

resource "dns_a_record_set" "wild_kube_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "*.kube-demo-1"
  addresses = ["10.10.10.30"]
  ttl       = 3600
}

resource "dns_a_record_set" "ksrv_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-demo-1"
  addresses = ["10.10.10.31"]
  ttl       = 3600
}

resource "dns_a_record_set" "ksrv_demo_2" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-demo-2"
  addresses = ["10.10.10.32"]
  ttl       = 3600
}

resource "dns_a_record_set" "ksrv_demo_3" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-demo-3"
  addresses = ["10.10.10.33"]
  ttl       = 3600
}

resource "dns_a_record_set" "kube_prod_1" {
  zone      = "home.unixvextor.com."
  name      = "kube-prod-1"
  addresses = ["10.10.30.30"]
  ttl       = 3600
}
resource "dns_a_record_set" "wild_kube_prod_1" {
  zone      = "home.unixvextor.com."
  name      = "*.kube-prod-1"
  addresses = ["10.10.30.30"]
  ttl       = 3600
}
resource "dns_a_record_set" "ksrv_prod_1" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-prod-1"
  addresses = ["10.10.30.31"]
  ttl       = 3600
}

resource "dns_a_record_set" "ksrv_prod_2" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-prod-2"
  addresses = ["10.10.30.32"]
  ttl       = 3600
}

resource "dns_a_record_set" "ksrv_prod_3" {
  zone      = "home.unixvextor.com."
  name      = "ksrv-prod-3"
  addresses = ["10.10.30.33"]
  ttl       = 3600
}

resource "dns_a_record_set" "antsrv_demo_1" {
  zone      = "home.unixvextor.com."
  name      = "antsrv-demo-1"
  addresses = ["10.10.10.41"]
  ttl = 3600
}