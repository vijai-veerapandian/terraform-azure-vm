
environment_name = "dev"
app_name         = "myweather"
enabled          = false
api_key          = "adada"
regions          = ["westus", "eastus", "westus"]
instance_count   = 1
region_instance_count = {
  "westus" = 4
  "eastus" = 8
}

region_set = ["westus", "eastus"]

object_settings = {
  kind = "Prod"
  tier = "Business"
}
