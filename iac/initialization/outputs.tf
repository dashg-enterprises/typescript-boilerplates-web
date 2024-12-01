output "cert_arn" {
  description = "The cert created for the domain"
  value = module.spa_on_aws.cert_arn
}