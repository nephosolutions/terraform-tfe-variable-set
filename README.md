# Terraform Cloud Variable-Set

This module provisions a Terraform Cloud variable set.

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
| [tfe_project_variable_set.project](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable.nonsensitive](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.sensitive](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.variable_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_workspace_variable_set.workspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_variable_set) | resource |
| [tfe_outputs.variable_set_variable](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/outputs) | data source |
| [tfe_project.project](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |
| [tfe_workspace_ids.variable_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace_ids) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the variable set. | `string` | `null` | no |
| <a name="input_global"></a> [global](#input\_global) | Whether the variable set applies to all workspaces in the organization. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the variable set. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the Terraform Cloud organization. | `string` | `null` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | Whether the variables in this set can be over-written by more specific scopes including values set on the command line. | `bool` | `false` | no |
| <a name="input_projects"></a> [projects](#input\_projects) | Set of project names where the variable set should be attached to. | `set(string)` | `[]` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | Set of variables to configure. | <pre>set(object({<br>    category    = string<br>    description = optional(string)<br>    hcl         = optional(bool)<br>    key         = string<br>    sensitive   = optional(bool)<br>    value       = string<br>    workspace   = string<br>  }))</pre> | `[]` | no |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | Set od workspace names where the variable set should be attached to. | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The variable set identifier. |
| <a name="output_name"></a> [name](#output\_name) | The variable set name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
