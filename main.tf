resource "helm_release" "coredns" {
  name       = "coredns"
  repository = "https://coredns.github.io/helm"
  chart      = "coredns"
  version    = var.chart_version
  namespace  = "kube-system"

  values = [
    file("${path.module}/values.yaml"),
    yamlencode({
      replicaCount              = var.replica_count
      service                   = { clusterIP = var.cluster_ip }
      topologySpreadConstraints = var.topology_spread_constraints
    })
  ]
}
