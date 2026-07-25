# frozen_string_literal: true

module OpenapiClient
  module Api
    class Logout
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/logout',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
