variable "input" {
  default = "a"
}

resource "template_file" "a" {
    filename = "a.txt"

    vars {
      input = "${var.input}"
    }
}

module "module" {
  source = "../module"
  input = "${template_file.a.rendered}"
}
