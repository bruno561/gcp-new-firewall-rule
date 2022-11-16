terraform {
  source = "git::https://git@github.com/brunopsantos93/gcp-module-firewall-rule.git//module/firewall?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {

//Rule Firewall {}

  project_id                    = "development-367511"
  vpc_name                      = "default"
  rule_name                     = "fw-vpc-shd-host-001-1000-i-a-myprofitapp-myprofitdb-tcp-3306"
  description_rule              = "firewall rule para comunicacao entre vm windows e vm linux na port 3306"
  range                         = ["10.21.101.46"]
  target_tag                    = ["network-vmprdmyprofitapp-vmprdmyprofitdb"]

  allow_values = [{
     protocol = "tcp"
     ports    = ["3306"]
  }]

}

# test