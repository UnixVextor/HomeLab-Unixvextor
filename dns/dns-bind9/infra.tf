resource "dns_a_record_set" "proxmox" {
  zone = "home.unixvextor.com."
  name = "proxmox"
  addresses = [
    "10.10.0.26",
  ]
  ttl = 3600
}

resource "dns_a_record_set" "nas" {
  zone = "home.unixvextor.com."
  name = "nas"
  addresses = [
    "10.10.0.17",
  ]
  ttl = 3600
} 