# frozen_string_literal: true

module OpenapiClient
  module Api
    class Billing::Prepays
      def initialize(connection)
        @connection = connection
      end

      def create(billing_prepay_request:)
        raise ArgumentError, 'billing_prepay_request is required' if billing_prepay_request.nil?

        @connection.call(
          :POST,
          '/billing/prepays',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: billing_prepay_request
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/billing/prepays/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/billing/prepays',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
