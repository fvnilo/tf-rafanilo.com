data "cloudflare_ip_ranges" "cloudflare" {}

data "cloudflare_zone" "rafanilo_com" {
  name = "rafanilo.com"
}