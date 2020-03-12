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

require "simplecov"
require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/entity_type_pb"
require "google/cloud/dialogflow/v2/entity_type_services_pb"
require "google/cloud/dialogflow/v2/entity_types"

class Google::Cloud::Dialogflow::V2::EntityTypes::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_entity_types
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::ListEntityTypesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    language_code = "hello world"
    page_size = 42
    page_token = "hello world"

    list_entity_types_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_entity_types, name
      assert_kind_of Google::Cloud::Dialogflow::V2::ListEntityTypesRequest, request
      assert_equal "hello world", request.parent
      assert_equal "hello world", request.language_code
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_entity_types_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_entity_types({ parent: parent, language_code: language_code, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_entity_types parent: parent, language_code: language_code, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_entity_types Google::Cloud::Dialogflow::V2::ListEntityTypesRequest.new(parent: parent, language_code: language_code, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_entity_types({ parent: parent, language_code: language_code, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_entity_types Google::Cloud::Dialogflow::V2::ListEntityTypesRequest.new(parent: parent, language_code: language_code, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_entity_types_client_stub.call_rpc_count
    end
  end

  def test_get_entity_type
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::EntityType.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_entity_type_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_entity_type, name
      assert_kind_of Google::Cloud::Dialogflow::V2::GetEntityTypeRequest, request
      assert_equal "hello world", request.name
      assert_equal "hello world", request.language_code
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_entity_type_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_entity_type({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_entity_type name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_entity_type Google::Cloud::Dialogflow::V2::GetEntityTypeRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_entity_type({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_entity_type Google::Cloud::Dialogflow::V2::GetEntityTypeRequest.new(name: name, language_code: language_code), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_entity_type_client_stub.call_rpc_count
    end
  end

  def test_create_entity_type
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::EntityType.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity_type = {}
    language_code = "hello world"

    create_entity_type_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_entity_type, name
      assert_kind_of Google::Cloud::Dialogflow::V2::CreateEntityTypeRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Dialogflow::V2::EntityType), request.entity_type
      assert_equal "hello world", request.language_code
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_entity_type_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_entity_type({ parent: parent, entity_type: entity_type, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_entity_type parent: parent, entity_type: entity_type, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_entity_type Google::Cloud::Dialogflow::V2::CreateEntityTypeRequest.new(parent: parent, entity_type: entity_type, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_entity_type({ parent: parent, entity_type: entity_type, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_entity_type Google::Cloud::Dialogflow::V2::CreateEntityTypeRequest.new(parent: parent, entity_type: entity_type, language_code: language_code), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_entity_type_client_stub.call_rpc_count
    end
  end

  def test_update_entity_type
    # Create GRPC objects.
    grpc_response = Google::Cloud::Dialogflow::V2::EntityType.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    entity_type = {}
    language_code = "hello world"
    update_mask = {}

    update_entity_type_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_entity_type, name
      assert_kind_of Google::Cloud::Dialogflow::V2::UpdateEntityTypeRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Dialogflow::V2::EntityType), request.entity_type
      assert_equal "hello world", request.language_code
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_entity_type_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_entity_type({ entity_type: entity_type, language_code: language_code, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_entity_type entity_type: entity_type, language_code: language_code, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_entity_type Google::Cloud::Dialogflow::V2::UpdateEntityTypeRequest.new(entity_type: entity_type, language_code: language_code, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_entity_type({ entity_type: entity_type, language_code: language_code, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_entity_type Google::Cloud::Dialogflow::V2::UpdateEntityTypeRequest.new(entity_type: entity_type, language_code: language_code, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_entity_type_client_stub.call_rpc_count
    end
  end

  def test_delete_entity_type
    # Create GRPC objects.
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_entity_type_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_entity_type, name
      assert_kind_of Google::Cloud::Dialogflow::V2::DeleteEntityTypeRequest, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_entity_type_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_entity_type({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_entity_type name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_entity_type Google::Cloud::Dialogflow::V2::DeleteEntityTypeRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_entity_type({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_entity_type Google::Cloud::Dialogflow::V2::DeleteEntityTypeRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_entity_type_client_stub.call_rpc_count
    end
  end

  def test_batch_update_entity_types
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    batch_update_entity_types_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_update_entity_types, name
      assert_kind_of Google::Cloud::Dialogflow::V2::BatchUpdateEntityTypesRequest, request
      assert_equal "hello world", request.parent
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_update_entity_types_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_update_entity_types({ parent: parent }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_update_entity_types parent: parent do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_update_entity_types Google::Cloud::Dialogflow::V2::BatchUpdateEntityTypesRequest.new(parent: parent) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_update_entity_types({ parent: parent }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_update_entity_types Google::Cloud::Dialogflow::V2::BatchUpdateEntityTypesRequest.new(parent: parent), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_update_entity_types_client_stub.call_rpc_count
    end
  end

  def test_batch_delete_entity_types
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity_type_names = ["hello world"]

    batch_delete_entity_types_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_delete_entity_types, name
      assert_kind_of Google::Cloud::Dialogflow::V2::BatchDeleteEntityTypesRequest, request
      assert_equal "hello world", request.parent
      assert_equal ["hello world"], request.entity_type_names
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_delete_entity_types_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_delete_entity_types({ parent: parent, entity_type_names: entity_type_names }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_delete_entity_types parent: parent, entity_type_names: entity_type_names do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_delete_entity_types Google::Cloud::Dialogflow::V2::BatchDeleteEntityTypesRequest.new(parent: parent, entity_type_names: entity_type_names) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_delete_entity_types({ parent: parent, entity_type_names: entity_type_names }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_delete_entity_types Google::Cloud::Dialogflow::V2::BatchDeleteEntityTypesRequest.new(parent: parent, entity_type_names: entity_type_names), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_delete_entity_types_client_stub.call_rpc_count
    end
  end

  def test_batch_create_entities
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entities = [{}]
    language_code = "hello world"

    batch_create_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_entities, name
      assert_kind_of Google::Cloud::Dialogflow::V2::BatchCreateEntitiesRequest, request
      assert_equal "hello world", request.parent
      assert_kind_of Google::Cloud::Dialogflow::V2::EntityType::Entity, request.entities.first
      assert_equal "hello world", request.language_code
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_entities_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_entities({ parent: parent, entities: entities, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_entities parent: parent, entities: entities, language_code: language_code do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_entities Google::Cloud::Dialogflow::V2::BatchCreateEntitiesRequest.new(parent: parent, entities: entities, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_entities({ parent: parent, entities: entities, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_entities Google::Cloud::Dialogflow::V2::BatchCreateEntitiesRequest.new(parent: parent, entities: entities, language_code: language_code), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_entities_client_stub.call_rpc_count
    end
  end

  def test_batch_update_entities
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entities = [{}]
    language_code = "hello world"
    update_mask = {}

    batch_update_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_update_entities, name
      assert_kind_of Google::Cloud::Dialogflow::V2::BatchUpdateEntitiesRequest, request
      assert_equal "hello world", request.parent
      assert_kind_of Google::Cloud::Dialogflow::V2::EntityType::Entity, request.entities.first
      assert_equal "hello world", request.language_code
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_update_entities_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_update_entities({ parent: parent, entities: entities, language_code: language_code, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_update_entities parent: parent, entities: entities, language_code: language_code, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_update_entities Google::Cloud::Dialogflow::V2::BatchUpdateEntitiesRequest.new(parent: parent, entities: entities, language_code: language_code, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_update_entities({ parent: parent, entities: entities, language_code: language_code, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_update_entities Google::Cloud::Dialogflow::V2::BatchUpdateEntitiesRequest.new(parent: parent, entities: entities, language_code: language_code, update_mask: update_mask), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_update_entities_client_stub.call_rpc_count
    end
  end

  def test_batch_delete_entities
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    entity_values = ["hello world"]
    language_code = "hello world"

    batch_delete_entities_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_delete_entities, name
      assert_kind_of Google::Cloud::Dialogflow::V2::BatchDeleteEntitiesRequest, request
      assert_equal "hello world", request.parent
      assert_equal ["hello world"], request.entity_values
      assert_equal "hello world", request.language_code
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_delete_entities_client_stub do
      # Create client
      client = Google::Cloud::Dialogflow::V2::EntityTypes::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_delete_entities({ parent: parent, entity_values: entity_values, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_delete_entities parent: parent, entity_values: entity_values, language_code: language_code do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_delete_entities Google::Cloud::Dialogflow::V2::BatchDeleteEntitiesRequest.new(parent: parent, entity_values: entity_values, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_delete_entities({ parent: parent, entity_values: entity_values, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_delete_entities Google::Cloud::Dialogflow::V2::BatchDeleteEntitiesRequest.new(parent: parent, entity_values: entity_values, language_code: language_code), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_delete_entities_client_stub.call_rpc_count
    end
  end
end
