data "http" "fronter" {
  url = "https://api.lmhd.me/v1/front.json"
}

locals {
  fronter = jsondecode(data.http.fronter.body)["members"][0]
}

output "fronter_id" {
  value = local.fronter.id
}
output "fronter_name" {
  value = local.fronter.display_name != "" ? local.fronter.display_name : local.fronter.name
}
output "fronter_color" {
  value = local.fronter.color
}
output "fronter_pronouns" {
  value = local.fronter.pronouns
}
output "fronter_avatar_url" {
  value = local.fronter.avatar_url
}



