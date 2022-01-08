# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/area120/tables/v1alpha1/tables.proto for package 'google.area120.tables.v1alpha1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/area120/tables/v1alpha1/tables_pb'

module Google
  module Area120
    module Tables
      module V1alpha1
        module TablesService
          # The Tables Service provides an API for reading and updating tables.
          # It defines the following resource model:
          #
          # - The API has a collection of [Table][google.area120.tables.v1alpha1.Table]
          #   resources, named `tables/*`
          #
          # - Each Table has a collection of [Row][google.area120.tables.v1alpha1.Row]
          #   resources, named `tables/*/rows/*`
          #
          # - The API has a collection of
          #   [Workspace][google.area120.tables.v1alpha1.Workspace]
          #   resources, named `workspaces/*`.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.area120.tables.v1alpha1.TablesService'

            # Gets a table. Returns NOT_FOUND if the table does not exist.
            rpc :GetTable, ::Google::Area120::Tables::V1alpha1::GetTableRequest, ::Google::Area120::Tables::V1alpha1::Table
            # Lists tables for the user.
            rpc :ListTables, ::Google::Area120::Tables::V1alpha1::ListTablesRequest, ::Google::Area120::Tables::V1alpha1::ListTablesResponse
            # Gets a workspace. Returns NOT_FOUND if the workspace does not exist.
            rpc :GetWorkspace, ::Google::Area120::Tables::V1alpha1::GetWorkspaceRequest, ::Google::Area120::Tables::V1alpha1::Workspace
            # Lists workspaces for the user.
            rpc :ListWorkspaces, ::Google::Area120::Tables::V1alpha1::ListWorkspacesRequest, ::Google::Area120::Tables::V1alpha1::ListWorkspacesResponse
            # Gets a row. Returns NOT_FOUND if the row does not exist in the table.
            rpc :GetRow, ::Google::Area120::Tables::V1alpha1::GetRowRequest, ::Google::Area120::Tables::V1alpha1::Row
            # Lists rows in a table. Returns NOT_FOUND if the table does not exist.
            rpc :ListRows, ::Google::Area120::Tables::V1alpha1::ListRowsRequest, ::Google::Area120::Tables::V1alpha1::ListRowsResponse
            # Creates a row.
            rpc :CreateRow, ::Google::Area120::Tables::V1alpha1::CreateRowRequest, ::Google::Area120::Tables::V1alpha1::Row
            # Creates multiple rows.
            rpc :BatchCreateRows, ::Google::Area120::Tables::V1alpha1::BatchCreateRowsRequest, ::Google::Area120::Tables::V1alpha1::BatchCreateRowsResponse
            # Updates a row.
            rpc :UpdateRow, ::Google::Area120::Tables::V1alpha1::UpdateRowRequest, ::Google::Area120::Tables::V1alpha1::Row
            # Updates multiple rows.
            rpc :BatchUpdateRows, ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsRequest, ::Google::Area120::Tables::V1alpha1::BatchUpdateRowsResponse
            # Deletes a row.
            rpc :DeleteRow, ::Google::Area120::Tables::V1alpha1::DeleteRowRequest, ::Google::Protobuf::Empty
            # Deletes multiple rows.
            rpc :BatchDeleteRows, ::Google::Area120::Tables::V1alpha1::BatchDeleteRowsRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
