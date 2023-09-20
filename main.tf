resource "null_resource" "fortune_cookie_generator" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "sh -c 'echo \"Your fortune cookie message: $(shuf -n 1 fortune_cookies.txt)\" > show_fortune.txt'"
  }
}
