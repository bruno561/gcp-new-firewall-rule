remote_state {
  backend = "gcs"
    generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    project                = "development-367511"
    location               = "us-east4"
    bucket                 = "terraform-brunolabs-us-east4"
    prefix                 = "terraform/${path_relative_to_include()}/terraform.tfstate"
  }
}