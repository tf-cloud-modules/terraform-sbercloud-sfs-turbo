# Sbercloud VPC Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "sfs-turbo" {
    source  = "tf-cloud-modules/sfs-turbo/sbercloud"

    name = "sfs-test"
    availability_zone = "ru-moscow-1a"
    vpc_id = "xxx-xxx-xxx"
    subnet_id = "xxx-xxx-xxx"
    security_group_id = "xxx-xxx-xxx"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_sfs_turbo.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/sfs_turbo) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Specifies the availability zone where the file system is located. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enhanced"></a> [enhanced](#input\_enhanced) | Specifies whether the file system is enhanced or not. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of an SFS Turbo file system. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the SFS Turbo resource. If omitted, the provider-level region will be used. | `string` | `null` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | Specifies the security group ID. | `string` | n/a | yes |
| <a name="input_share_proto"></a> [share\_proto](#input\_share\_proto) | Specifies the protocol for sharing file systems. | `string` | `null` | no |
| <a name="input_share_type"></a> [share\_type](#input\_share\_type) | Specifies the file system type. | `string` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | Specifies the capacity of a common file system, in GB. | `number` | `500` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Specifies the network ID of the subnet. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Specifies the VPC ID. Changing this will create a new resource. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_capacity"></a> [available\_capacity](#output\_available\_capacity) | The available capacity of the SFS Turbo file system in the unit of GB. |
| <a name="output_export_location"></a> [export\_location](#output\_export\_location) | The mount point of the SFS Turbo file system. |
| <a name="output_id"></a> [id](#output\_id) | The UUID of the SFS Turbo file system. |
| <a name="output_region"></a> [region](#output\_region) | The region of the SFS Turbo file system. |
| <a name="output_version"></a> [version](#output\_version) | The version ID of the SFS Turbo file system. |
<!-- END_TF_DOCS -->