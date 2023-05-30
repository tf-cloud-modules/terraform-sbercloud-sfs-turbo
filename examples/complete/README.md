## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sfs"></a> [sfs](#module\_sfs) | ../../ | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/tf-cloud-modules/terraform-sbercloud-vpc.git | n/a |

## Resources

| Name | Type |
|------|------|
| [sbercloud_networking_secgroup.default](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/data-sources/networking_secgroup) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_capacity"></a> [available\_capacity](#output\_available\_capacity) | The available capacity of the SFS Turbo file system in the unit of GB. |
| <a name="output_export_location"></a> [export\_location](#output\_export\_location) | The mount point of the SFS Turbo file system. |
| <a name="output_id"></a> [id](#output\_id) | The UUID of the SFS Turbo file system. |
| <a name="output_region"></a> [region](#output\_region) | The region of the SFS Turbo file system. |
| <a name="output_version"></a> [version](#output\_version) | The version ID of the SFS Turbo file system. |
<!-- END_TF_DOCS -->