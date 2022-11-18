resource "cloudflare_record" "apex_rafanilo_com" {
  zone_id = data.cloudflare_zone.rafanilo_com.id
  name    = "rafanilo.com"
  value   = var.rafanilo_com_endpoint
  type    = "CNAME"
  proxied = true
  ttl     = 1
}