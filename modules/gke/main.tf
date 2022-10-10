# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

locals {
  network = "_APP_NAME-${var.env}"
}

# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "_APP_NAME-${var.env}"
  location = "_REGION"

  network    = "${local.network}"
  subnetwork = "${var.subnet}"

  description = "Deployed with Cloud Provision"

# Enabling Autopilot for this cluster
  enable_autopilot = true
}