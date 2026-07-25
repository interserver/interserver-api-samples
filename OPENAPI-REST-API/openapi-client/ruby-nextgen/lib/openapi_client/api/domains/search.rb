# frozen_string_literal: true

module OpenapiClient
  module Api
    class Domains::Search
      def initialize(connection)
        @connection = connection
      end

      def create(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :POST,
          '/domains/search/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/domains/search/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::DomainSearchResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
