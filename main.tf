terraform {
  required_version = ">=0.12.9"
}

resource "aws_ses_template" "templates" {
  count   = length(local.templates)
  name    = local.templates[count.index].name
  subject = file(local.templates[count.index].subject)
  html    = file(local.templates[count.index].html)
  text    = file(local.templates[count.index].text)
}
