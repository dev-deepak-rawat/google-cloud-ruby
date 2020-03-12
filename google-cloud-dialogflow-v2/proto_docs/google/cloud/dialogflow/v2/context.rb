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
    module Dialogflow
      module V2
        # Represents a context.
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The unique identifier of the context. Format:
        #     `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
        #
        #     The `Context ID` is always converted to lowercase, may only contain
        #     characters in [a-zA-Z0-9_-%] and may be at most 250 bytes long.
        #
        #     The following context names are reserved for internal use by Dialogflow.
        #     You should not use these contexts or create contexts with these names:
        #
        #     * `__system_counters__`
        #     * `*_id_dialog_context`
        #     * `*_dialog_params_size`
        # @!attribute [rw] lifespan_count
        #   @return [Integer]
        #     Optional. The number of conversational query requests after which the
        #     context expires. If set to `0` (the default) the context expires
        #     immediately. Contexts expire automatically after 20 minutes if there
        #     are no matching queries.
        # @!attribute [rw] parameters
        #   @return [Google::Protobuf::Struct]
        #     Optional. The collection of parameters associated with this context.
        #     Refer to [this
        #     doc](https://cloud.google.com/dialogflow/docs/intents-actions-parameters)
        #     for syntax.
        class Context
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The session to list all contexts from.
        #     Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
        # @!attribute [rw] page_size
        #   @return [Integer]
        #     Optional. The maximum number of items to return in a single page. By
        #     default 100 and at most 1000.
        # @!attribute [rw] page_token
        #   @return [String]
        #     Optional. The next_page_token value returned from a previous list request.
        class ListContextsRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].
        # @!attribute [rw] contexts
        #   @return [Array<Google::Cloud::Dialogflow::V2::Context>]
        #     The list of contexts. There will be a maximum number of items
        #     returned based on the page_size field in the request.
        # @!attribute [rw] next_page_token
        #   @return [String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListContextsResponse
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.GetContext][google.cloud.dialogflow.v2.Contexts.GetContext].
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The name of the context. Format:
        #     `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
        class GetContextRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.CreateContext][google.cloud.dialogflow.v2.Contexts.CreateContext].
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The session to create a context for.
        #     Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
        # @!attribute [rw] context
        #   @return [Google::Cloud::Dialogflow::V2::Context]
        #     Required. The context to create.
        class CreateContextRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.UpdateContext][google.cloud.dialogflow.v2.Contexts.UpdateContext].
        # @!attribute [rw] context
        #   @return [Google::Cloud::Dialogflow::V2::Context]
        #     Required. The context to update.
        # @!attribute [rw] update_mask
        #   @return [Google::Protobuf::FieldMask]
        #     Optional. The mask to control which fields get updated.
        class UpdateContextRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.DeleteContext][google.cloud.dialogflow.v2.Contexts.DeleteContext].
        # @!attribute [rw] name
        #   @return [String]
        #     Required. The name of the context to delete. Format:
        #     `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
        class DeleteContextRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for [Contexts.DeleteAllContexts][google.cloud.dialogflow.v2.Contexts.DeleteAllContexts].
        # @!attribute [rw] parent
        #   @return [String]
        #     Required. The name of the session to delete all contexts from. Format:
        #     `projects/<Project ID>/agent/sessions/<Session ID>`.
        class DeleteAllContextsRequest
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
