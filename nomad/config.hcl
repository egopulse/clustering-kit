data_dir = "/var/lib/nomad"
bind_addr = "{{ GetInterfaceIP \"eth0\" }}"

server {
  enabled = true
  bootstrap_expect = 3
  retry_join = ["server-2", "server-3"]
}

client {
  enabled = true
  network_interface = "eth0"
  meta {
    server_type = "ts"
  }
}