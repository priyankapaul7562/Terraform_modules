resource "assessment" "vpc_network" {
  name                    = "my-custom-mode-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "assessment" "default" {
  name          = "my-custom-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "asia-south1-c"
  network       = assessment.vpc_network.assessment-365111
}
