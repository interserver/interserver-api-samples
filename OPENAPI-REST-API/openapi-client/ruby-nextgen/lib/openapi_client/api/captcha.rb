# frozen_string_literal: true

module OpenapiClient
  module Api
    class Captcha
      def initialize(connection)
        @connection = connection
      end

      def list
        @connection.call(
          :GET,
          '/captcha',
          type: OpenapiClient::Models::CaptchaResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
