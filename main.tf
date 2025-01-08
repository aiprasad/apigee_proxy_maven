terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
  required_version = ">= 1.3.0"
}

resource "null_resource" "deploy_multi_proxies" {
  provisioner "local-exec" {
    command = <<EOT
      mvn clean install \
        -Dapigee.org=${var.org_name} \
        -Dapigee.env=${var.env_name} \
        -Dapigee.bearerToken=${var.apigee_bearer_token}
    EOT
  }
}
