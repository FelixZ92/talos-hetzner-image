output "worker_hosts" {
  value = {
    "workers-${var.pool_name}" = [for i,w in hcloud_server.worker : {
      name = w.name
      private_address = hcloud_server_network.worker[i].ip
    }]
  }
}
