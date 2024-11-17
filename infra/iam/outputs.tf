output "client_id" {
  value = azuread_service_principal.main.client_id
  sensitive = false
}

output "client_secret" {
  value = azuread_service_principal_password.main.value
  sensitive = true 
}