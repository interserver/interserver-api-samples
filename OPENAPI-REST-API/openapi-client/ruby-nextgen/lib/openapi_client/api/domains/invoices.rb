# frozen_string_literal: true

module OpenapiClient
  module Api
    class Domains::Invoices
      def initialize(connection)
        @connection = connection
      end

      def list(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/invoices'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ChargeInvoiceRows,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
