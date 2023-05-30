provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}

module "vpc" {
  source = "git::https://github.com/tf-cloud-modules/terraform-sbercloud-vpc.git"

  name = "tf-vpc-test"
  cidr = "10.0.0.0/16"

  azs = ["ru-moscow-1a", "ru-moscow-1b"]
  subnets = [
    {
      cidr       = "10.0.0.0/24"
      gateway_ip = "10.0.0.1"
    },
  ]

  dhcp_enable   = true
  primary_dns   = "100.125.13.59"
  secondary_dns = "8.8.8.8"

  tags = {
    env = "test"
  }

}

data "sbercloud_networking_secgroup" "default" {
  name = "default" # using for tests as a workaround before sec group module is ready
}

module "sfs" {
  source = "../../"

  name              = "sfs-test"
  availability_zone = "ru-moscow-1a"
  vpc_id            = module.vpc.id
  subnet_id         = module.vpc.subnet_ids[0]
  security_group_id = data.sbercloud_networking_secgroup.default.id
}