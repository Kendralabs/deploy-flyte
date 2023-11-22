locals {

  #Change this on first use
  application            = "flyte" #By default, this is used to build the FQDN for Flyte. See flyte-host notes
  environment            = "gcp"
  project_id             = "<your-project-ID>"
  project_number =  "<your-project-number>"
  dns-domain =           "<your domain name>" #Change to your domain name 
  region   =             "<your GCP region>" #Change to your GCP region
  
  #You must replace this email address with your own.
  # Let's Encrypt will use this to contact you about expiring
  # certificates, and issues related to your account.
  email    =             "noreply@flyte.org" 
  
  # Change this only if you need to add more projects in the default installation
  flyte_projects         = ["flytesnacks"]
  flyte_domains          = ["development", "staging", "production"]
}

