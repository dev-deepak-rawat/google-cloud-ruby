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


module Google
  module Cloud
    module Tpu
      module V1
        module Tpu
          # Path helper methods for the Tpu API.
          module Paths
            ##
            # Create a fully-qualified AcceleratorType resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/acceleratorTypes/{accelerator_type}`
            #
            # @param project [String]
            # @param location [String]
            # @param accelerator_type [String]
            #
            # @return [::String]
            def accelerator_type_path project:, location:, accelerator_type:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/acceleratorTypes/#{accelerator_type}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Node resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/nodes/{node}`
            #
            # @param project [String]
            # @param location [String]
            # @param node [String]
            #
            # @return [::String]
            def node_path project:, location:, node:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/nodes/#{node}"
            end

            ##
            # Create a fully-qualified TensorFlowVersion resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/tensorFlowVersions/{tensor_flow_version}`
            #
            # @param project [String]
            # @param location [String]
            # @param tensor_flow_version [String]
            #
            # @return [::String]
            def tensor_flow_version_path project:, location:, tensor_flow_version:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/tensorFlowVersions/#{tensor_flow_version}"
            end

            extend self
          end
        end
      end
    end
  end
end
