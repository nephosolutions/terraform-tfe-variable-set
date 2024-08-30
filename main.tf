/**
 * Copyright 2019-2024 NephoSolutions srl, Sebastian Trebitz
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

data "tfe_project" "project" {
  for_each = var.projects

  name         = each.value
  organization = var.organization
}

data "tfe_workspace_ids" "variable_set" {
  names        = var.workspaces
  organization = var.organization
}

resource "tfe_variable_set" "variable_set" {
  name         = var.name
  description  = var.description
  organization = var.organization
  global       = var.global
  priority     = var.priority
}

resource "tfe_project_variable_set" "project" {
  for_each = data.tfe_project.project

  variable_set_id = tfe_variable_set.variable_set.id
  project_id      = each.value.id
}

resource "tfe_workspace_variable_set" "workspace" {
  for_each = data.tfe_workspace_ids.variable_set.ids

  variable_set_id = tfe_variable_set.variable_set.id
  workspace_id    = each.value
}

module "variable_set_variable" {
  source = "./modules/variable"

  for_each = { for k, v in var.variables : format("%s/%s", v.key, v.category) => v }

  category        = each.value.category
  description     = each.value.description
  hcl             = each.value.hcl
  key             = each.value.key
  organization    = var.organization
  sensitive       = each.value.sensitive
  value           = each.value.value
  variable_set_id = tfe_variable_set.variable_set.id
  workspace       = each.value.workspace
}
