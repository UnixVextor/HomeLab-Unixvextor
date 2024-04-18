resource "dns_ptr_record" "ptr_proxmox" {
  zone = "10.10.in-addr.arpa."
  name = "26.0"
  ptr  = "proxmox.home.unixvextor.com."
  ttl  = 300
}