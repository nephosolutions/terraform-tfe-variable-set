# Terraform Cloud Variable-Set Variable

This module provisions a variable in a variable set reading the value from a workspace output.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Copyright 2019-2024 NephoSolutions srl, Sebastian Trebitz

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.51 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.58.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.variable_set_variable](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_outputs.variable_set_variable](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | Whether this is a Terraform or environment variable. Valid values are `terraform` or `env`. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the variable. | `string` | `null` | no |
| <a name="input_hcl"></a> [hcl](#input\_hcl) | Whether to evaluate the value of the variable as a string of HCL code. | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | Name of the variable. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization. | `string` | n/a | yes |
| <a name="input_sensitive"></a> [sensitive](#input\_sensitive) | Whether the value is sensitive. If true then the variable is written once and not visible thereafter. | `bool` | `false` | no |
| <a name="input_value"></a> [value](#input\_value) | The workspace output to read the variable value from. | `string` | n/a | yes |
| <a name="input_variable_set_id"></a> [variable\_set\_id](#input\_variable\_set\_id) | ID of the variable set that owns the variable. | `string` | n/a | yes |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | The name of the workspace from which to read outputs. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The variable identifier. |
| <a name="output_name"></a> [name](#output\_name) | The variable name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
