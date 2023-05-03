provider "kubernetes" {
  config_context_cluster = "jworks-playground-dev"
}

resource "kubernetes_deployment" "myapp" {
  metadata {
    name = "cloud-kick-start"
    labels = {
      app = "myapp"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "myapp"
      }
    }

    template {
      metadata {
        labels = {
          app = "myapp"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "myapp-container"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "myapp" {
  metadata {
    name = "myapp"
  }

  spec {
    selector = {
      app = "myapp"
    }

    port {
      name        = "http"
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
