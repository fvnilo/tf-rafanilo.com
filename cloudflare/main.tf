resource "cloudflare_record" "apex_rahonasydevops_com" {
  zone_id = data.cloudflare_zone.rahonasydevops_com.id
  name    = "rahonasydevops.com"
  value   = var.rahonasydevops_com_endpoint
  type    = "CNAME"
  proxied = true
  ttl     = 1
}