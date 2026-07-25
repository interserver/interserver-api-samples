# frozen_string_literal: true

module OpenapiClient
  module Api
    class Info
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/info',
          type: OpenapiClient::Models::ServicesInfo,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
