# frozen_string_literal: true

module OpenapiClient
  module Api
    class Domains::Lookup
      def initialize(connection)
        @connection = connection
      end

      def get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/domains/lookup/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::DomainLookupResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
