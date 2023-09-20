# Use local-exec to select a random line from the file and store it in an output

resource "null_resource" "select_random_fortune" {
  triggers = {
    filename = "fortune_cookies.txt"
  }

  provisioner "local-exec" {
    command = "shuf -n 1 fortune_cookies.txt > show_fortune.txt"
  }
}

# Define an output to display the random fortune cookie message

output "my_fortune" {
  value = file("show_fortune.txt")
}

