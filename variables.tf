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

variable "description" {
  description = "Description of the variable set."
  type        = string
  default     = null
}

variable "global" {
  description = "Whether the variable set applies to all workspaces in the organization."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the variable set."
  type        = string
  nullable    = false
}

variable "organization" {
  description = "Name of the Terraform Cloud organization."
  type        = string
  default     = null
}

variable "priority" {
  description = "Whether the variables in this set can be over-written by more specific scopes including values set on the command line."
  type        = bool
  default     = false
}

variable "projects" {
  description = "Set of project names where the variable set should be attached to."
  type        = set(string)
  nullable    = false
  default     = []
}

variable "variables" {
  description = "Set of variables to configure."

  type = set(object({
    category    = string
    description = optional(string)
    hcl         = optional(bool)
    key         = string
    sensitive   = optional(bool)
    value       = string
    workspace   = string
  }))

  nullable = false
  default  = []
}

variable "workspaces" {
  description = "Set od workspace names where the variable set should be attached to."
  type        = set(string)
  nullable    = false
  default     = []
}
