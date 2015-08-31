variable "input" {

}

resource "template_file" "b" {
    filename = "${path.module}/data/template.txt"

    vars {
      input = "${var.input}"
    }
}

module "submodule" {
  source = "../submodule"
  input = "${template_file.b.rendered}"
}
