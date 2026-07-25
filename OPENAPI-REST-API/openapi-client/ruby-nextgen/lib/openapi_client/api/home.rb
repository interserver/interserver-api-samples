# frozen_string_literal: true

module OpenapiClient
  module Api
    class Home
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/home',
          type: OpenapiClient::Models::Home,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
