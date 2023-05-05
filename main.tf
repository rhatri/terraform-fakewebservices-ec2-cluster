resource "fakewebservices_vpc" "vpc" {
  name = var.cluster_name
  cidr_block = var.cidr_block
}

resource "fakewebservices_server" "servers" {
  count = 5

  name = "${var.cluster_name} server ${count.index+1}"
  type = var.instance_type
}

resource "fakewebservices_load_balancer" "fabio" {
  name = "fabio"
  servers = fakewebservices_server.servers[*].name
}

resource "fakewebservices_database" "postgres" {
  count = 2

  name = "postgres"
  size = var.db_size
}
