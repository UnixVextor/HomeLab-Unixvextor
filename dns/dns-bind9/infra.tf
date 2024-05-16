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
    "10.10.0.15",
  ]
  ttl = 3600
}

resource "dns_a_record_set" "pi_kvm" {
  zone = "home.unixvextor.com."
  name = "pikvm"
  addresses = [
    "10.10.0.12",
  ]
  ttl = 3600
}