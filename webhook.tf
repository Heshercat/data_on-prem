resource "scalr_webhook" "webhook" {
  name         = "alfi-auto_webhook_${formatdate("DDMMYYYY", timestamp())}"
  enabled      = true
  url          = var.ep_url
  secret_key   = "A3a44119946b537bcd94ec64b14e4e3196bcf6867"
  timeout      = 15
  max_attempts = 3
  events       = ["run:completed", "run:errored", "run:needs_attention"]
  environments = [scalr_environment.env_tag.id, scalr_environment.env_no_tag.id]
  account_id   = data.scalr_current_account.account.id
}

data "scalr_current_account" "account" {}
