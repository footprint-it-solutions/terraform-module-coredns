resource "helm_release" "coredns" {
  name       = "coredns"
  repository = "https://coredns.github.io/helm"
  chart      = "coredns"
  version    = var.chart_version
  namespace  = "kube-system"

  values = [
    file("${path.module}/values.yaml")
  ]

  set = [
    {
      name  = "replicaCount"
      value = var.replica_count
    },
    {
      name  = "service.clusterIP"
      value = var.cluster_ip
    }
  ]
}
