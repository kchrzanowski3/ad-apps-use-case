

resource "azuread_user" "test1" {
  user_principal_name = "32432eawfdsaew@secnowski.com"
  display_name        = "Kyle-Test1"
  given_name = "Kyle"
  surname = "Chrzanowski"
  
  password            = var.test_user_pass
  employee_id         = 1

  mail = "kyle.one@secnowski.com"
  usage_location = "US"
  
}



