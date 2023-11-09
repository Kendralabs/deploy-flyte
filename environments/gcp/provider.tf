provider "google" {
  project = local.project_id #Replace with your project name
  region  = local.default_region
}

provider "google-beta" {
  project = local.project_id #Replace with your project name
  region  = local.default_region
}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.current.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

provider "kubectl" {
 host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.current.access_token
  
  cluster_ca_certificate = base64decode(module.gke.ca_certificate) 
  
}

provider "helm" {
  kubernetes {
    host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.current.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate) 
  }
}
