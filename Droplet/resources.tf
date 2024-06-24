resource "digitalocean_droplet" "myaipcdemo" {
  name     = "myaipcdemo"
  region   = "sgp1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-20-04-x64"
  ssh_keys = ["db:36:7c:f9:ba:82:97:89:ac:08:26:38:07:fb:1b:d3"]

  connection {
    type        = "ssh"
    user        = "root"
    private_key = file("~/.ssh/id_ed25519")
    host        = self.ipv4_address
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update"
    ]

  }
}
