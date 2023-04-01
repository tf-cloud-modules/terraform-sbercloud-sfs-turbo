resource "sbercloud_sfs_turbo" "this" {
  count = var.create ? 1 : 0

  region            = var.region           
  name              = var.name             
  size              = var.size             
  share_proto       = var.share_proto      
  share_type        = var.share_type       
  availability_zone = var.availability_zone
  vpc_id            = var.vpc_id           
  subnet_id         = var.subnet_id        
  security_group_id = var.security_group_id
  enhanced          = var.enhanced         
}