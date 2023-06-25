# output "ip-address" {
#   #value = join(":", [module.container[0].network_data[0].ip_address,] )
#   value = flatten(module.container[*].ip-address)
#   #sensitive = true
# }
# output "container-name" {
#   value = module.container[*].container-name
  
# }

# # # # output "IP-Address-2" {
# # # #   value = join(":", [docker_container.nodered_container[1].network_data[0].ip_address, docker_container.nodered_container[1].ports[0].external])
# # # #   description = "THe IP of the container"
# # # # }