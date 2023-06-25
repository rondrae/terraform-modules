resource "docker_container" "container" {
 
  
  name  = var.name_in
  image = var.image_in
  ports {
    internal = var.in_port_in
    external = var.ex_port_in
  }
  volumes {
    container_path = var.container_path_in
    volume_name = docker_volume.container_volume.name
  }
}

resource "docker_volume" "container_volume" {
  name = "${var.name_in}-volume"
  lifecycle {
    prevent_destroy = false
  }
}