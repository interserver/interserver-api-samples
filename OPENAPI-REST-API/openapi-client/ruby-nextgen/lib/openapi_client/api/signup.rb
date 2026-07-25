# frozen_string_literal: true

module OpenapiClient
  module Api
    class Signup
      def initialize(connection)
        @connection = connection
      end

      def create(login_submission_example: nil)
        @connection.call(
          :POST,
          '/signup',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: login_submission_example
        )
      end
    end
  end
end
