resource "azuread_application" "main" {
  display_name = var.app_name
  notes = "Application to manage Terraform resources in CI/CD pipelines"
}

resource "azuread_service_principal" "main" {
  client_id = azuread_application.main.client_id
}

resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.id
}

data "azurerm_subscription" "main" {
  subscription_id = var.subscription_id
}

resource "azurerm_role_assignment" "main" {
  scope                = data.azurerm_subscription.main.id
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.main.object_id
}
