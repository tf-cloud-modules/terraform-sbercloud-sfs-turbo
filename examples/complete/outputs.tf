output "id" {
  description = "The UUID of the SFS Turbo file system."
  value       = try(module.sfs.id, "")
}

output "region" {
  description = "The region of the SFS Turbo file system."
  value       = try(module.sfs.region, "")
}

output "version" {
  description = "The version ID of the SFS Turbo file system."
  value       = try(module.sfs.version, "")
}

output "export_location" {
  description = "The mount point of the SFS Turbo file system."
  value       = try(module.sfs.export_location, "")
}

output "available_capacity" {
  description = "The available capacity of the SFS Turbo file system in the unit of GB."
  value       = try(module.sfs.available_capacity, "")
}