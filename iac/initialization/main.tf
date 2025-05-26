locals {
  hosted_zone_id = "Z03829103FGKVJE6VHSAF"
  domain = "justthespot.io"
}

module "spa_on_aws" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/spa-website/aws/initialization?ref=main" #"../../cloud-platform/src/modules/spa-website/aws"#"https://github.com/dashg-enterprises/cloud-platform.git//src/modules/aws/spa-website"
  hosted_zone_id = local.hosted_zone_id
  domain = local.domain
}