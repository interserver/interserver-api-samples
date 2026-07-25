# frozen_string_literal: true

module OpenapiClient
  module Api
    class Billing::Creditcards
      def initialize(connection)
        @connection = connection
      end

      def create(billing_add_cc_request:)
        raise ArgumentError, 'billing_add_cc_request is required' if billing_add_cc_request.nil?

        @connection.call(
          :POST,
          '/billing/creditcards',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: billing_add_cc_request
        )
      end

      def create_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/billing/creditcards/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/billing/creditcards/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def verify(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/billing/creditcards/{id}/verify'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def verify_patch(id:, patch_billing_credit_card_verify_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'patch_billing_credit_card_verify_request is required' if patch_billing_credit_card_verify_request.nil?

        @connection.call(
          :PATCH,
          '/billing/creditcards/{id}/verify'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: patch_billing_credit_card_verify_request
        )
      end

      def verify_post(id:, billing_verify_cc_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'billing_verify_cc_request is required' if billing_verify_cc_request.nil?

        @connection.call(
          :POST,
          '/billing/creditcards/{id}/verify'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: billing_verify_cc_request
        )
      end
    end
  end
end
