# Retrieve domain information
data "azuread_domains" "example" {
  only_initial = true
}

# Create a terraform application from a gallery template
data "azuread_application_template" "terraformcloud" {
  display_name = "Terraform Cloud"
  
}

resource "azuread_application_from_template" "terraformcloud" {
  display_name = "Terraform Cloud"
  template_id  = data.azuread_application_template.terraformcloud.template_id
}

data "azuread_application" "terraformcloud" {
  object_id = azuread_application_from_template.terraformcloud.application_object_id
}

data "azuread_service_principal" "terraformcloud" {
  object_id = azuread_application_from_template.terraformcloud.service_principal_object_id
}


