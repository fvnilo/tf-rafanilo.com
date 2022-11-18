output "ipv4_ranges" {
  value = data.cloudflare_ip_ranges.cloudflare.ipv4_cidr_blocks
}