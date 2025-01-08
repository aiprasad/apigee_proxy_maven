**Apigee Infra Repo**

This repository manages the infrastructure and deployment of multiple API proxies (proxyA and proxyB) on Apigee. It includes the configuration for proxies, API products, and Maven build scripts for deployment.

file structure

```
apigee-infra-repo/
  ├─ proxyA/
  │   ├─ pom.xml                # Maven build file for ProxyA
  │   ├─ apiproxy/              # ProxyA's configuration
  │   │   ├─ proxies/           # Proxy Endpoint files
  │   │   ├─ targets/           # Target Endpoint files
  │   │   └─ resources/         # Additional policies or resources
  │   └─ config/
  │       └─ productA.json      # API product configuration for ProxyA
  ├─ proxyB/
  │   ├─ pom.xml                # Maven build file for ProxyB
  │   ├─ apiproxy/              # ProxyB's configuration
  │   │   ├─ proxies/           # Proxy Endpoint files
  │   │   ├─ targets/           # Target Endpoint files
  │   │   └─ resources/         # Additional policies or resources
  │   └─ config/
  │       └─ productB.json      # API product configuration for ProxyB
  ├─ parent-pom.xml             # Aggregator POM to manage all proxies
  ├─ main.tf                    # Terraform file for deployment
  ├─ variables.tf               # Terraform variables file
  └─ .github/
      └─ workflows/
          └─ deploy.yml         # GitHub Actions workflow for deployment
  ```
