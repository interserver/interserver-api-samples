# frozen_string_literal: true

module OpenapiClient
  module Api
    class Billing
      def initialize(connection)
        @connection = connection
      end

      def cart
        @connection.call(
          :GET,
          '/billing/cart',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def payment_method(billing_payment_method_request:)
        raise ArgumentError, 'billing_payment_method_request is required' if billing_payment_method_request.nil?

        @connection.call(
          :POST,
          '/billing/payment_method',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: billing_payment_method_request
        )
      end
    end
  end
end
