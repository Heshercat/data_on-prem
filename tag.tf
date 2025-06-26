resource "scalr_tag" "auto_tag" {
  name = "alfi-automatically_set:${formatdate("DDMMYYYY", timestamp())}"
}
