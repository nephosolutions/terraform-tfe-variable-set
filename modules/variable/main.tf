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

data "tfe_outputs" "variable_set_variable" {
  organization = var.organization
  workspace    = var.workspace
}

locals {
  nonsensitive_values = data.tfe_outputs.variable_set_variable.nonsensitive_values
  sensitive_values    = data.tfe_outputs.variable_set_variable.values
}

resource "tfe_variable" "variable_set_variable" {
  category        = var.category
  description     = var.description
  hcl             = var.hcl
  key             = var.key
  sensitive       = var.sensitive
  variable_set_id = var.variable_set_id

  # ensure that values from sensitive outputs are not written into nonsensitive variables
  value = var.sensitive ? local.sensitive_values[var.value] : local.nonsensitive_values[var.value]
}
