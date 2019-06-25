variable "nfs_disk_size" {
  default = 200
}

variable "flavors" {
  type = "map"
  default = {
    "central-manager" = "de.NBI small disc"
    "exec-node" = "de.NBI medium disc"
    "nfs-server" = "de.NBI small disc"
  }
}

variable "exec_node_count" {
  default = 2
}

variable "image" {
  type = "map"
  default = {
    "name" = "vggp-v31-j124"
    "image_source_url" = "https://usegalaxy.eu/static/vgcn/vggp-v31-j124-5f1806ab2120-master.raw"
    "container_format" = "bare"
    "disk_format" = "raw"
   }
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC1NsmuU6ETRGMk1veC5jyx/bRZ3WTjgoxVUcWAFizpvPGWdJc2x0ZW0dMr9WDSlqXkQHf4FvRiqxtL9Q8Kej8odESM7ej6y1/huGfQTGtHnCOV2P4MC+nNaNim0KzEUwgQ9MNdMUnfhJcmRNHIIUVFtxEfC2bhthoBpEN6WMehRgn7E91e9W5GHA7nmHmQCDTFGkPGyM3FTPsEarH9P4hjXlfp9pRb/vlhm5xbHEgKZU1iIDrNDZNeMfZlK7Ja1u9rCzAavwzNkwcLt3/dMoXuiDXTFtlzTM83bseHseCLpczJuwhW62DtitX4K/dO6zCKmcv1EUt2SEY2PsnZ0sZypDCtYq+lsCTUukp8E/DPzSsd61vfHEZBMzRw7bxU7ELH/TlcTRs4UmAYXA7phkmetIVq2Y9vNni1UP04dwP9rvlqdYXNDemIMs4AC48SDnrhZ47zSP0S6EMvKhcZcSWhAKKMr0p+3OHrifNXhLcLoz/+lsM1z/ev1YYeigkyXjVYeWGLy8fYSG5yEp27mSWdde1frGnp4Bl0t9FemcBI+AKvugwZiHNlUVI3m3XyP6tygK+MdMPQp6NwNWHKYUPFRZvRSnOEOoj6B9RRUEzW9XWR8Np1iuAf76UtuW4r/nwKlKKwU/uF7oKaRuiIUAYzGdyQrcZuBp3l4vV7h7bptw== gmauro@informatik.uni-freiburg.de"
}

variable "name_prefix" {
  default = "vgcn-"
}

variable "name_suffix" {
  default = ".denbi.uni-tuebingen.de"
}

variable "secgroups_cm" {
  type = "list"
  default = [
    "vgcn-public-ssh",
    "vgcn-ingress-private",
    "vgcn-egress-public",
  ]
}

variable "secgroups" {
  type = "list"
  default = [
    "vgcn-ingress-private",
    "vgcn-egress-public",
  ]
}

variable "public_network" {
  default  = "denbi_uni_tuebingen_external"
}

variable "private_network" {
  type = "map"
  default  = {
    name = "nat"
    subnet_name = "natv4"
    cidr4 = "192.168.54.0/24"
  }
}

variable "ssh-port" {
  default = "22"
}
