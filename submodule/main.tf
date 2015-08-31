variable "input" {

}

resource "template_file" "c" {
    filename = "${path.module}/data/template.txt"

    vars {
      input = "${var.input}"
    }
}
