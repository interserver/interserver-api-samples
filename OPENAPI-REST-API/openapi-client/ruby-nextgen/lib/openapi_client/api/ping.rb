# frozen_string_literal: true

module OpenapiClient
  module Api
    class Ping
      def initialize(connection)
        @connection = connection
      end

      def server
        @connection.call(
          :GET,
          '/ping',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
