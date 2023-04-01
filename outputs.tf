output "id" {
  description = "The UUID of the SFS Turbo file system."
  value       = try(sbercloud_sfs_turbo.this[0].id, "")
}

output "region" {
  description = "The region of the SFS Turbo file system."
  value       = try(sbercloud_sfs_turbo.this[0].region, "")
}

output "version" {
  description = "The version ID of the SFS Turbo file system."
  value       = try(sbercloud_sfs_turbo.this[0].version, "")
}

output "export_location" {
  description = "The mount point of the SFS Turbo file system."
  value       = try(sbercloud_sfs_turbo.this[0].export_location, "")
}

output "available_capacity" {
  description = "The available capacity of the SFS Turbo file system in the unit of GB."
  value       = try(sbercloud_sfs_turbo.this[0].available_capacity, "")
}