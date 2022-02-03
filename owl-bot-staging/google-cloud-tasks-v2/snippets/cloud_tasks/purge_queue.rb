# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START cloudtasks_v2_generated_CloudTasks_PurgeQueue_sync]
require "google/cloud/tasks/v2"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Tasks::V2::CloudTasks::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Tasks::V2::PurgeQueueRequest.new

# Call the purge_queue method.
result = client.purge_queue request

# The returned object is of type Google::Cloud::Tasks::V2::Queue.
p result
# [END cloudtasks_v2_generated_CloudTasks_PurgeQueue_sync]
