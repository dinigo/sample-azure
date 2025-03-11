module "sartorius_demo_fullstack_webapp" {
  source = "./modules/azure_fullstack_webapp"

  # concrete config
  app_name = "sartorius-demo"
  repository_url = "https://github.com/dinigo/sample-azure"

  # proxied config
  repository_token = var.repository_token
}
