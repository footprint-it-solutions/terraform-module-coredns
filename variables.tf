variable "chart_version" {
  description = "Helm chart version to install"
  type        = string
  default     = "1.29.0"
}

variable "cluster_ip" {
  description = "The cluster IP for the kube-dns service."
  type        = string
  default     = "172.20.0.10"
}

variable "k8s_app_label_override" {
  description = "Override the k8s-app label for the CoreDNS deployment."
  type        = string
  default     = "kube-dns"
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
