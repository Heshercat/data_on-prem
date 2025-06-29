resource "scalr_environment" "env_tag" {
  name                    = "alfi-env_tag_${formatdate("DDMMYYYY", timestamp())}"
  tag_ids                 = [scalr_tag.auto_tag.id]
}

resource "scalr_environment" "env_no_tag" {
  name                    = "alfi-env_no_tag_${formatdate("DDMMYYYY", timestamp())}"
}
