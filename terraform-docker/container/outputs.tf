output "ip-address" {
  value = join(":", [docker_container.container.network_data[0].ip_address, docker_container.container.ports[0].external])
  #value = [for i in docker_container.container[*]: join (":", [i.network_data[0].ip_address], i.ports[*]["external"] ) ]
  description = "THe IP of the container"
  #sensitive = true
}
output "container-name" {
  value = docker_container.container.name
  
}

# # output "IP-Address-2" {
# #   value = join(":", [docker_container.nodered_container[1].network_data[0].ip_address, docker_container.nodered_container[1].ports[0].external])
# #   description = "THe IP of the container"
# # }