module "foundation" {
  source = "git::ssh://git@github.com/manasma-k/foundation.git//modules/resource-group?ref=CHANGE_ME"

  name     = var.name
  location = var.location
  tags     = var.tags
}
