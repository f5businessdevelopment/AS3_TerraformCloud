data "template_file" "tfcValues" {
  template = file("Day1/cloud.tf.example")
  vars = {
    org   = "Org${local.prefix}"
    works = "workspace${local.prefix}"
  }
}

resource "local_file" "tfcValues" {
  content  = data.template_file.tfcValues.rendered
  filename = "Day1/cloud.tf"
}
