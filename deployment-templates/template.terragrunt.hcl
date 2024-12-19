include "root" {
  path = find_in_parent_folders()
}

locals {
  build_id = ""
  repo_url = ""
  repo_name = ""
  environment_name = ""
  environment_subdomain = ""
}

terraform {
  source = "git::${local.repo_url}.git//iac?ref=main"
}

dependency "initialization" {
  config_path = "../../../_initializations/${local.repo_name}"
}

inputs = {
  environment           = local.environment_name
  environment_subdomain = local.environment_subdomain
  build_id              = local.build_id
  cert_arn              = dependency.environment.outputs.cert_arn
}