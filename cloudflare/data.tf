data "cloudflare_ip_ranges" "cloudflare" {}

data "cloudflare_zone" "rahonasydevops_com" {
  name = "rahonasydevops.com"
}