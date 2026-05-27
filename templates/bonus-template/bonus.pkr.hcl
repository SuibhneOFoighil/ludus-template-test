# Minimal Packer template stub used only to exercise the sync flow.
# Not intended to actually build — it just needs to be picked up by the
# source walker so we can observe whether the template propagates on sync.

variable "iso_url" {
  type    = string
  default = "https://example.test/dummy.iso"
}

source "null" "bonus" {
  communicator = "none"
}

build {
  name = "bonus"
  sources = ["source.null.bonus"]
}
