# Terraform "Fake Web Services" EC2 Cluster

This module provisions "resources" to a fictitious cloud provider, "Fake Web Services" - used in the [TFC Getting Started project](https://github.com/hashicorp/tfc-getting-started).

These resources are purely for demonstration and created in Terraform Cloud, scoped to your TFC user account.

## Usage

```hcl
module "ec2-cluster" {
  source = "github.com/sebasslash/terraform-fakewebservices-ec2-cluster"

  token = var.token
  hostname = var.hostname
  instance_type = "t2.micro"
  cluster_name = "EC2 Cluster 1"
  cidr_block = "192.168.0.0/16"
  db_size = "256"
}

variable "token" {
  type = string
  description = "The token to configure the fakewebservices provider. Must be a User or Team TFC/E token."
  sensitive = true
}
  
variable "hostname" {
  type = string
  default = "app.terraform.io"
  description = "The hostname to use"
}
```


