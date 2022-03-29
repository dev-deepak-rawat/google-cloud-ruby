# frozen_string_literal: true

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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          # Request message for BigtableInstanceAdmin.CreateInstance.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the project in which to create the new instance.
          #     Values are of the form `projects/{project}`.
          # @!attribute [rw] instance_id
          #   @return [::String]
          #     Required. The ID to be used when referring to the new instance within its project,
          #     e.g., just `myinstance` rather than
          #     `projects/myproject/instances/myinstance`.
          # @!attribute [rw] instance
          #   @return [::Google::Cloud::Bigtable::Admin::V2::Instance]
          #     Required. The instance to create.
          #     Fields marked `OutputOnly` must be left blank.
          # @!attribute [rw] clusters
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Bigtable::Admin::V2::Cluster}]
          #     Required. The clusters to be created within the instance, mapped by desired
          #     cluster ID, e.g., just `mycluster` rather than
          #     `projects/myproject/instances/myinstance/clusters/mycluster`.
          #     Fields marked `OutputOnly` must be left blank.
          #     Currently, at most four clusters can be specified.
          class CreateInstanceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::Bigtable::Admin::V2::Cluster]
            class ClustersEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Request message for BigtableInstanceAdmin.GetInstance.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the requested instance. Values are of the form
          #     `projects/{project}/instances/{instance}`.
          class GetInstanceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.ListInstances.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the project for which a list of instances is requested.
          #     Values are of the form `projects/{project}`.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     DEPRECATED: This field is unused and ignored.
          class ListInstancesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for BigtableInstanceAdmin.ListInstances.
          # @!attribute [rw] instances
          #   @return [::Array<::Google::Cloud::Bigtable::Admin::V2::Instance>]
          #     The list of requested instances.
          # @!attribute [rw] failed_locations
          #   @return [::Array<::String>]
          #     Locations from which Instance information could not be retrieved,
          #     due to an outage or some other transient condition.
          #     Instances whose Clusters are all in one of the failed locations
          #     may be missing from `instances`, and Instances with at least one
          #     Cluster in a failed location may only have partial information returned.
          #     Values are of the form `projects/<project>/locations/<zone_id>`
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     DEPRECATED: This field is unused and ignored.
          class ListInstancesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.PartialUpdateInstance.
          # @!attribute [rw] instance
          #   @return [::Google::Cloud::Bigtable::Admin::V2::Instance]
          #     Required. The Instance which will (partially) replace the current value.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The subset of Instance fields which should be replaced.
          #     Must be explicitly set.
          class PartialUpdateInstanceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.DeleteInstance.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the instance to be deleted.
          #     Values are of the form `projects/{project}/instances/{instance}`.
          class DeleteInstanceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.CreateCluster.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the instance in which to create the new cluster.
          #     Values are of the form
          #     `projects/{project}/instances/{instance}`.
          # @!attribute [rw] cluster_id
          #   @return [::String]
          #     Required. The ID to be used when referring to the new cluster within its instance,
          #     e.g., just `mycluster` rather than
          #     `projects/myproject/instances/myinstance/clusters/mycluster`.
          # @!attribute [rw] cluster
          #   @return [::Google::Cloud::Bigtable::Admin::V2::Cluster]
          #     Required. The cluster to be created.
          #     Fields marked `OutputOnly` must be left blank.
          class CreateClusterRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.GetCluster.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the requested cluster. Values are of the form
          #     `projects/{project}/instances/{instance}/clusters/{cluster}`.
          class GetClusterRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.ListClusters.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the instance for which a list of clusters is requested.
          #     Values are of the form `projects/{project}/instances/{instance}`.
          #     Use `{instance} = '-'` to list Clusters for all Instances in a project,
          #     e.g., `projects/myproject/instances/-`.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     DEPRECATED: This field is unused and ignored.
          class ListClustersRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for BigtableInstanceAdmin.ListClusters.
          # @!attribute [rw] clusters
          #   @return [::Array<::Google::Cloud::Bigtable::Admin::V2::Cluster>]
          #     The list of requested clusters.
          # @!attribute [rw] failed_locations
          #   @return [::Array<::String>]
          #     Locations from which Cluster information could not be retrieved,
          #     due to an outage or some other transient condition.
          #     Clusters from these locations may be missing from `clusters`,
          #     or may only have partial information returned.
          #     Values are of the form `projects/<project>/locations/<zone_id>`
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     DEPRECATED: This field is unused and ignored.
          class ListClustersResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.DeleteCluster.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the cluster to be deleted. Values are of the form
          #     `projects/{project}/instances/{instance}/clusters/{cluster}`.
          class DeleteClusterRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by CreateInstance.
          # @!attribute [rw] original_request
          #   @return [::Google::Cloud::Bigtable::Admin::V2::CreateInstanceRequest]
          #     The request that prompted the initiation of this CreateInstance operation.
          # @!attribute [rw] request_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the original request was received.
          # @!attribute [rw] finish_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the operation failed or was completed successfully.
          class CreateInstanceMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by UpdateInstance.
          # @!attribute [rw] original_request
          #   @return [::Google::Cloud::Bigtable::Admin::V2::PartialUpdateInstanceRequest]
          #     The request that prompted the initiation of this UpdateInstance operation.
          # @!attribute [rw] request_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the original request was received.
          # @!attribute [rw] finish_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the operation failed or was completed successfully.
          class UpdateInstanceMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by CreateCluster.
          # @!attribute [rw] original_request
          #   @return [::Google::Cloud::Bigtable::Admin::V2::CreateClusterRequest]
          #     The request that prompted the initiation of this CreateCluster operation.
          # @!attribute [rw] request_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the original request was received.
          # @!attribute [rw] finish_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the operation failed or was completed successfully.
          class CreateClusterMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by UpdateCluster.
          # @!attribute [rw] original_request
          #   @return [::Google::Cloud::Bigtable::Admin::V2::Cluster]
          #     The request that prompted the initiation of this UpdateCluster operation.
          # @!attribute [rw] request_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the original request was received.
          # @!attribute [rw] finish_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the operation failed or was completed successfully.
          class UpdateClusterMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by PartialUpdateCluster.
          # @!attribute [rw] request_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the original request was received.
          # @!attribute [rw] finish_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which the operation failed or was completed successfully.
          # @!attribute [rw] original_request
          #   @return [::Google::Cloud::Bigtable::Admin::V2::PartialUpdateClusterRequest]
          #     The original request for PartialUpdateCluster.
          class PartialUpdateClusterMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.PartialUpdateCluster.
          # @!attribute [rw] cluster
          #   @return [::Google::Cloud::Bigtable::Admin::V2::Cluster]
          #     Required. The Cluster which contains the partial updates to be applied, subject to
          #     the update_mask.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The subset of Cluster fields which should be replaced.
          class PartialUpdateClusterRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.CreateAppProfile.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the instance in which to create the new app profile.
          #     Values are of the form
          #     `projects/{project}/instances/{instance}`.
          # @!attribute [rw] app_profile_id
          #   @return [::String]
          #     Required. The ID to be used when referring to the new app profile within its
          #     instance, e.g., just `myprofile` rather than
          #     `projects/myproject/instances/myinstance/appProfiles/myprofile`.
          # @!attribute [rw] app_profile
          #   @return [::Google::Cloud::Bigtable::Admin::V2::AppProfile]
          #     Required. The app profile to be created.
          #     Fields marked `OutputOnly` will be ignored.
          # @!attribute [rw] ignore_warnings
          #   @return [::Boolean]
          #     If true, ignore safety checks when creating the app profile.
          class CreateAppProfileRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.GetAppProfile.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the requested app profile. Values are of the form
          #     `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
          class GetAppProfileRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.ListAppProfiles.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The unique name of the instance for which a list of app profiles is
          #     requested. Values are of the form
          #     `projects/{project}/instances/{instance}`.
          #     Use `{instance} = '-'` to list AppProfiles for all Instances in a project,
          #     e.g., `projects/myproject/instances/-`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Maximum number of results per page.
          #
          #     A page_size of zero lets the server choose the number of items to return.
          #     A page_size which is strictly positive will return at most that many items.
          #     A negative page_size will cause an error.
          #
          #     Following the first request, subsequent paginated calls are not required
          #     to pass a page_size. If a page_size is set in subsequent calls, it must
          #     match the page_size given in the first request.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The value of `next_page_token` returned by a previous call.
          class ListAppProfilesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for BigtableInstanceAdmin.ListAppProfiles.
          # @!attribute [rw] app_profiles
          #   @return [::Array<::Google::Cloud::Bigtable::Admin::V2::AppProfile>]
          #     The list of requested app profiles.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Set if not all app profiles could be returned in a single response.
          #     Pass this value to `page_token` in another request to get the next
          #     page of results.
          # @!attribute [rw] failed_locations
          #   @return [::Array<::String>]
          #     Locations from which AppProfile information could not be retrieved,
          #     due to an outage or some other transient condition.
          #     AppProfiles from these locations may be missing from `app_profiles`.
          #     Values are of the form `projects/<project>/locations/<zone_id>`
          class ListAppProfilesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.UpdateAppProfile.
          # @!attribute [rw] app_profile
          #   @return [::Google::Cloud::Bigtable::Admin::V2::AppProfile]
          #     Required. The app profile which will (partially) replace the current value.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The subset of app profile fields which should be replaced.
          #     If unset, all fields will be replaced.
          # @!attribute [rw] ignore_warnings
          #   @return [::Boolean]
          #     If true, ignore safety checks when updating the app profile.
          class UpdateAppProfileRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.DeleteAppProfile.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique name of the app profile to be deleted. Values are of the form
          #     `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
          # @!attribute [rw] ignore_warnings
          #   @return [::Boolean]
          #     Required. If true, ignore safety checks when deleting the app profile.
          class DeleteAppProfileRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The metadata for the Operation returned by UpdateAppProfile.
          class UpdateAppProfileMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for BigtableInstanceAdmin.ListHotTablets.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The cluster name to list hot tablets.
          #     Value is in the following form:
          #     `projects/{project}/instances/{instance}/clusters/{cluster}`.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The start time to list hot tablets. The hot tablets in the response will
          #     have start times between the requested start time and end time. Start time
          #     defaults to Now if it is unset, and end time defaults to Now - 24 hours if
          #     it is unset. The start time should be less than the end time, and the
          #     maximum allowed time range between start time and end time is 48 hours.
          #     Start time and end time should have values between Now and Now - 14 days.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The end time to list hot tablets.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Maximum number of results per page.
          #
          #     A page_size that is empty or zero lets the server choose the number of
          #     items to return. A page_size which is strictly positive will return at most
          #     that many items. A negative page_size will cause an error.
          #
          #     Following the first request, subsequent paginated calls do not need a
          #     page_size field. If a page_size is set in subsequent calls, it must match
          #     the page_size given in the first request.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The value of `next_page_token` returned by a previous call.
          class ListHotTabletsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for BigtableInstanceAdmin.ListHotTablets.
          # @!attribute [rw] hot_tablets
          #   @return [::Array<::Google::Cloud::Bigtable::Admin::V2::HotTablet>]
          #     List of hot tablets in the tables of the requested cluster that fall
          #     within the requested time range. Hot tablets are ordered by node cpu usage
          #     percent. If there are multiple hot tablets that correspond to the same
          #     tablet within a 15-minute interval, only the hot tablet with the highest
          #     node cpu usage will be included in the response.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Set if not all hot tablets could be returned in a single response.
          #     Pass this value to `page_token` in another request to get the next
          #     page of results.
          class ListHotTabletsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
