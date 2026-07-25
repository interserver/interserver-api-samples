# frozen_string_literal: true

module OpenapiClient
  module Api
    class Billing::Pay
      def initialize(connection)
        @connection = connection
      end

      def get(method:, invoices:)
        raise ArgumentError, 'method is required' if method.nil?
        raise ArgumentError, 'invoices is required' if invoices.nil?

        @connection.call(
          :GET,
          '/billing/pay/{method}/{invoices}'
            .gsub('{method}', ERB::Util.url_encode(method.to_s))
            .gsub('{invoices}', ERB::Util.url_encode(invoices.to_s)),
          type: OpenapiClient::Models::InitiatePayment200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
