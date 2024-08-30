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

variable "category" {
  description = "Whether this is a Terraform or environment variable. Valid values are `terraform` or `env`."
  type        = string
  nullable    = false

  validation {
    condition     = contains(["env", "terraform"], var.category)
    error_message = "Invalid variable category. Valid values are terraform or env."
  }
}

variable "description" {
  description = "Description of the variable."
  type        = string
  default     = null
}

variable "hcl" {
  description = "Whether to evaluate the value of the variable as a string of HCL code."
  type        = bool
  default     = false
}

variable "key" {
  description = "Name of the variable."
  type        = string
  nullable    = false
}

variable "organization" {
  description = "The name of the organization."
  type        = string
  nullable    = false
}

variable "sensitive" {
  description = "Whether the value is sensitive. If true then the variable is written once and not visible thereafter."
  type        = bool
  nullable    = false
  default     = false
}

variable "value" {
  description = "The workspace output to read the variable value from."
  type        = string
  nullable    = false
}

variable "variable_set_id" {
  description = "ID of the variable set that owns the variable."
  type        = string
  nullable    = false
}

variable "workspace" {
  description = "The name of the workspace from which to read outputs."
  type        = string
  nullable    = false
}
