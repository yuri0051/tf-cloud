resource "aws_instance" "aws-vm-1" {
  ami           = var.aws-ami
  instance_type = var.aws-instance-type

  tags = {
    Name = "tf-backends-instance-1"
  }
}

resource "google_compute_instance" "gcp-vm-1" {
  machine_type = var.gcp-machine-type
  name         = var.gcp-instance-name

  boot_disk {
    initialize_params {
      image = var.gcp-image
    }
  }
  network_interface {
    network = var.gcp-network
  }
}
