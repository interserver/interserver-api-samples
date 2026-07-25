# frozen_string_literal: true

module OpenapiClient
  module Api
    class Search
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/search',
          type: OpenapiClient::Models::SearchAutocompleteResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
