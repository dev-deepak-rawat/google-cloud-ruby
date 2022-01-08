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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dialogflow/v2/version"

require "google/cloud/dialogflow/v2/documents/credentials"
require "google/cloud/dialogflow/v2/documents/paths"
require "google/cloud/dialogflow/v2/documents/operations"
require "google/cloud/dialogflow/v2/documents/client"

module Google
  module Cloud
    module Dialogflow
      module V2
        ##
        # Service for managing knowledge {::Google::Cloud::Dialogflow::V2::Document Documents}.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dialogflow/v2/documents"
        #     client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new
        #
        module Documents
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "documents", "helpers.rb"
require "google/cloud/dialogflow/v2/documents/helpers" if ::File.file? helper_path
