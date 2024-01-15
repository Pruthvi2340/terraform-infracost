resource "null_resource" "get_cost" {
  count = var.get_cost ? 1 : 0
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "infracost breakdown --path . --out-file cost.txt"

    environment = {
      INFRACOST_API_KEY = var.infracost_key
    }
  }
}

data "local_file" "cost" {
  count    = var.get_cost ? 1:0
  filename = "cost.txt"

  depends_on = [
    null_resource.get_cost
  ]
}
