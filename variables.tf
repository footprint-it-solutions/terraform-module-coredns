variable "chart_version" {
  description = "Helm chart version to install"
  type        = string
  default     = "1.16.1"
}

variable "cluster_ip" {
  description = "The cluster IP for the kube-dns service."
  type        = string
  default     = "172.20.0.10"
}

variable "replica_count" {
  description = "The number of CoreDNS replicas."
  type        = number
  default     = 3
}

variable "topology_spread_constraints" {
  description = "Topology spread constraints for CoreDNS."
  type        = any
  default     = []
}
