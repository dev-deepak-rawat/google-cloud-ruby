# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module Redis
      module V1beta1
        # A Google Cloud Redis instance.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Unique name of the resource in this scope including project and
        #     location using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #
        #     Note: Redis instances are managed and addressed at regional level so
        #     location_id here refers to a GCP region; however, users may choose which
        #     specific zone (or collection of zones for cross-zone instances) an instance
        #     should be provisioned in. Refer to {Google::Cloud::Redis::V1beta1::Instance#location_id location_id} and
        #     {Google::Cloud::Redis::V1beta1::Instance#alternative_location_id alternative_location_id} fields for more details.
        # @!attribute [rw] display_name
        #   @return [String]
        #     An arbitrary and optional user-provided name for the instance.
        # @!attribute [rw] labels
        #   @return [Hash{String => String}]
        #     Resource labels to represent user provided metadata
        # @!attribute [rw] location_id
        #   @return [String]
        #     Optional. The zone where the instance will be provisioned. If not provided,
        #     the service will choose a zone for the instance. For STANDARD_HA tier,
        #     instances will be created across two zones for protection against zonal
        #     failures. If {Google::Cloud::Redis::V1beta1::Instance#alternative_location_id alternative_location_id} is also provided, it must be
        #     different from {Google::Cloud::Redis::V1beta1::Instance#location_id location_id}.
        # @!attribute [rw] alternative_location_id
        #   @return [String]
        #     Optional. Only applicable to STANDARD_HA tier which protects the instance
        #     against zonal failures by provisioning it across two zones. If provided, it
        #     must be a different zone from the one provided in {Google::Cloud::Redis::V1beta1::Instance#location_id location_id}.
        # @!attribute [rw] redis_version
        #   @return [String]
        #     Optional. The version of Redis software.
        #     If not provided, latest supported version will be used. Currently, the
        #     supported values are:
        #
        #     * `REDIS_3_2` for Redis 3.2 compatibility
        #       * `REDIS_4_0` for Redis 4.0 compatibility (default)
        #     * `REDIS_5_0` for Redis 5.0 compatibility
        # @!attribute [rw] reserved_ip_range
        #   @return [String]
        #     Optional. The CIDR range of internal addresses that are reserved for this
        #     instance. If not provided, the service will choose an unused /29 block,
        #     for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique
        #     and non-overlapping with existing subnets in an authorized network.
        # @!attribute [rw] host
        #   @return [String]
        #     Output only. Hostname or IP address of the exposed Redis endpoint used by
        #     clients to connect to the service.
        # @!attribute [rw] port
        #   @return [Integer]
        #     Output only. The port number of the exposed Redis endpoint.
        # @!attribute [rw] current_location_id
        #   @return [String]
        #     Output only. The current zone where the Redis endpoint is placed. For Basic
        #     Tier instances, this will always be the same as the {Google::Cloud::Redis::V1beta1::Instance#location_id location_id}
        #     provided by the user at creation time. For Standard Tier instances,
        #     this can be either {Google::Cloud::Redis::V1beta1::Instance#location_id location_id} or {Google::Cloud::Redis::V1beta1::Instance#alternative_location_id alternative_location_id} and can
        #     change after a failover event.
        # @!attribute [rw] create_time
        #   @return [Google::Protobuf::Timestamp]
        #     Output only. The time the instance was created.
        # @!attribute [rw] state
        #   @return [Google::Cloud::Redis::V1beta1::Instance::State]
        #     Output only. The current state of this instance.
        # @!attribute [rw] status_message
        #   @return [String]
        #     Output only. Additional information about the current status of this
        #     instance, if available.
        # @!attribute [rw] redis_configs
        #   @return [Hash{String => String}]
        #     Optional. Redis configuration parameters, according to
        #     http://redis.io/topics/config. Currently, the only supported parameters
        #     are:
        #
        #      Redis version 3.2 and newer:
        #
        #     * maxmemory-policy
        #       * notify-keyspace-events
        #
        #       Redis version 4.0 and newer:
        #
        #     * activedefrag
        #       * lfu-decay-time
        #     * lfu-log-factor
        #       * maxmemory-gb
        #
        #       Redis version 5.0 and newer:
        #
        #     * stream-node-max-bytes
        #       * stream-node-max-entries
        # @!attribute [rw] tier
        #   @return [Google::Cloud::Redis::V1beta1::Instance::Tier]
        #     Required. The service tier of the instance.
        # @!attribute [rw] memory_size_gb
        #   @return [Integer]
        #     Required. Redis memory size in GiB.
        # @!attribute [rw] authorized_network
        #   @return [String]
        #     Optional. The full name of the Google Compute Engine
        #     [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the
        #     instance is connected. If left unspecified, the `default` network
        #     will be used.
        # @!attribute [rw] persistence_iam_identity
        #   @return [String]
        #     Output only. Cloud IAM identity used by import / export operations to
        #     transfer data to/from Cloud Storage. Format is
        #     "serviceAccount:<service_account_email>". The value may change over time
        #     for a given instance so should be checked before each import/export
        #     operation.
        # @!attribute [rw] connect_mode
        #   @return [Google::Cloud::Redis::V1beta1::Instance::ConnectMode]
        #     Optional. The connect mode of Redis instance.
        #     If not provided, default one will be used.
        #     Current default: DIRECT_PEERING.
        class Instance
          # Available connection modes.
          module ConnectMode
            # Not set.
            CONNECT_MODE_UNSPECIFIED = 0

            # Connect via directly peering with memorystore redis hosted service.
            DIRECT_PEERING = 1

            # Connect with google via private service access and share connection
            # across google managed services.
            PRIVATE_SERVICE_ACCESS = 2
          end

          # Represents the different states of a Redis instance.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # Redis instance is being created.
            CREATING = 1

            # Redis instance has been created and is fully usable.
            READY = 2

            # Redis instance configuration is being updated. Certain kinds of updates
            # may cause the instance to become unusable while the update is in
            # progress.
            UPDATING = 3

            # Redis instance is being deleted.
            DELETING = 4

            # Redis instance is being repaired and may be unusable.
            REPAIRING = 5

            # Maintenance is being performed on this Redis instance.
            MAINTENANCE = 6

            # Redis instance is importing data (availability may be affected).
            IMPORTING = 8

            # Redis instance is failing over (availability may be affected).
            FAILING_OVER = 10
          end

          # Available service tiers to choose from
          module Tier
            # Not set.
            TIER_UNSPECIFIED = 0

            # BASIC tier: standalone instance
            BASIC = 1

            # STANDARD_HA tier: highly available primary/replica instances
            STANDARD_HA = 3
          end
        end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::ListInstances ListInstances}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The resource name of the instance location using the form:
        #         `projects/{project_id}/locations/{location_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 1000 will be used by the service.
        #     Regardless of the page_size value, the response may include a partial list
        #     and a caller should only rely on response's
        #     {Google::Cloud::Redis::V1beta1::ListInstancesResponse#next_page_token `next_page_token`}
        #     to determine if there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [String]
        #     The `next_page_token` value returned from a previous
        #     {Google::Cloud::Redis::V1beta1::CloudRedis::ListInstances ListInstances} request, if any.
        class ListInstancesRequest; end

        # Response for {Google::Cloud::Redis::V1beta1::CloudRedis::ListInstances ListInstances}.
        # @!attribute [rw] instances
        #   @return [Array<Google::Cloud::Redis::V1beta1::Instance>]
        #     A list of Redis instances in the project in the specified location,
        #     or across all locations.
        #
        #     If the `location_id` in the parent field of the request is "-", all regions
        #     available to the project are queried, and the results aggregated.
        #     If in such an aggregated query a location is unavailable, a dummy Redis
        #     entry is included in the response with the `name` field set to a value of
        #     the form `projects/{project_id}/locations/{location_id}/instances/`- and
        #     the `status` field set to ERROR and `status_message` field set to "location
        #     not available for ListInstances".
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [Array<String>]
        #     Locations that could not be reached.
        class ListInstancesResponse; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::GetInstance GetInstance}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        class GetInstanceRequest; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::CreateInstance CreateInstance}.
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The resource name of the instance location using the form:
        #         `projects/{project_id}/locations/{location_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] instance_id
        #   @return [String]
        #     Required. The logical name of the Redis instance in the customer project
        #     with the following restrictions:
        #
        #     * Must contain only lowercase letters, numbers, and hyphens.
        #     * Must start with a letter.
        #     * Must be between 1-40 characters.
        #     * Must end with a number or a letter.
        #     * Must be unique within the customer project / location
        # @!attribute [rw] instance
        #   @return [Google::Cloud::Redis::V1beta1::Instance]
        #     Required. A Redis [Instance] resource
        class CreateInstanceRequest; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::UpdateInstance UpdateInstance}.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. The elements of the repeated paths field may only include these
        #     fields from {Google::Cloud::Redis::V1beta1::Instance Instance}:
        #
        #     * `displayName`
        #       * `labels`
        #     * `memorySizeGb`
        #       * `redisConfig`
        # @!attribute [rw] instance
        #   @return [Google::Cloud::Redis::V1beta1::Instance]
        #     Required. Update description.
        #     Only fields specified in update_mask are updated.
        class UpdateInstanceRequest; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::UpgradeInstance UpgradeInstance}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] redis_version
        #   @return [String]
        #     Required. Specifies the target version of Redis software to upgrade to.
        class UpgradeInstanceRequest; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::DeleteInstance DeleteInstance}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        class DeleteInstanceRequest; end

        # The Cloud Storage location for the input content
        # @!attribute [rw] uri
        #   @return [String]
        #     Required. Source data URI. (e.g. 'gs://my_bucket/my_object').
        class GcsSource; end

        # The input content
        # @!attribute [rw] gcs_source
        #   @return [Google::Cloud::Redis::V1beta1::GcsSource]
        #     Google Cloud Storage location where input content is located.
        class InputConfig; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::ImportInstance Import}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] input_config
        #   @return [Google::Cloud::Redis::V1beta1::InputConfig]
        #     Required. Specify data to be imported.
        class ImportInstanceRequest; end

        # The Cloud Storage location for the output content
        # @!attribute [rw] uri
        #   @return [String]
        #     Required. Data destination URI (e.g.
        #     'gs://my_bucket/my_object'). Existing files will be overwritten.
        class GcsDestination; end

        # The output content
        # @!attribute [rw] gcs_destination
        #   @return [Google::Cloud::Redis::V1beta1::GcsDestination]
        #     Google Cloud Storage destination for output content.
        class OutputConfig; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::ExportInstance Export}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] output_config
        #   @return [Google::Cloud::Redis::V1beta1::OutputConfig]
        #     Required. Specify data to be exported.
        class ExportInstanceRequest; end

        # Request for {Google::Cloud::Redis::V1beta1::CloudRedis::FailoverInstance Failover}.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] data_protection_mode
        #   @return [Google::Cloud::Redis::V1beta1::FailoverInstanceRequest::DataProtectionMode]
        #     Optional. Available data protection modes that the user can choose. If it's
        #     unspecified, data protection mode will be LIMITED_DATA_LOSS by default.
        class FailoverInstanceRequest
          # Specifies different modes of operation in relation to the data retention.
          module DataProtectionMode
            # Defaults to LIMITED_DATA_LOSS if a data protection mode is not
            # specified.
            DATA_PROTECTION_MODE_UNSPECIFIED = 0

            # Instance failover will be protected with data loss control. More
            # specifically, the failover will only be performed if the current
            # replication offset diff between master and replica is under a certain
            # threshold.
            LIMITED_DATA_LOSS = 1

            # Instance failover will be performed without data loss control.
            FORCE_DATA_LOSS = 2
          end
        end

        # This location metadata represents additional configuration options for a
        # given location where a Redis instance may be created. All fields are output
        # only. It is returned as content of the
        # `google.cloud.location.Location.metadata` field.
        # @!attribute [rw] available_zones
        #   @return [Hash{String => Google::Cloud::Redis::V1beta1::ZoneMetadata}]
        #     Output only. The set of available zones in the location. The map is keyed
        #     by the lowercase ID of each zone, as defined by GCE. These keys can be
        #     specified in `location_id` or `alternative_location_id` fields when
        #     creating a Redis instance.
        class LocationMetadata; end

        # Defines specific information for a particular zone. Currently empty and
        # reserved for future use only.
        class ZoneMetadata; end
      end
    end
  end
end