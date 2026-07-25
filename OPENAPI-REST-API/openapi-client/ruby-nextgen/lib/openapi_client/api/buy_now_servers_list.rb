# frozen_string_literal: true

module OpenapiClient
  module Api
    class BuyNowServersList
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/buy_now_servers_list',
          type: OpenapiClient::Models::BuyItNowList,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
