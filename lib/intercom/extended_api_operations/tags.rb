require 'intercom/traits/api_resource'
require 'intercom/client_collection_proxy'

module Intercom
  module ExtendedApiOperations
    module Tags
      def by_tag(id)
        collection_name = Utils.resource_class_to_collection_name(collection_class)
        ClientCollectionProxy.new(collection_name, finder_details: {url: "/#{collection_name}?tag_id=#{id}"}, client: @client)
      end
    end
  end
end
