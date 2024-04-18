resource "dns_a_record_set" "proxmox" {
  zone = "home.unixvextor.com."
  name = "proxmox"
  addresses = [
    "10.10.0.26",
    "10.10.30.251"
  ]
  ttl = 3600
}