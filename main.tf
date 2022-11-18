module "s3" {
    source = "./s3"

    cloudflare_ip_ranges = module.cloudflare.ipv4_ranges
}

module "cloudflare" {
    source = "./cloudflare"

    cloudflare_api_token = var.cloudflare_api_token
    rafanilo_com_endpoint = module.s3.rafanilo_com_endpoint
}