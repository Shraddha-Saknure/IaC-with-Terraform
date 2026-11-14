terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# Pulls the Nginx image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Provisions the Docker container
resource "docker_container" "nginx_server" {
  image = docker_image.nginx.image_id
  name  = "elevate_nginx_container"

  ports {
    internal = 80
    external = 8080
  }
}
