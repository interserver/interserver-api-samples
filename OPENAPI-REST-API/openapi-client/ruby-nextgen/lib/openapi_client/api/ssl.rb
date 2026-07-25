# frozen_string_literal: true

module OpenapiClient
  module Api
    class Ssl
      def initialize(connection)
        @connection = connection
      end

      def cancel(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/ssl/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SslCancel200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/ssl/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/ssl/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/ssl',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order
        @connection.call(
          :GET,
          '/ssl/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(ssl_order_request:)
        raise ArgumentError, 'ssl_order_request is required' if ssl_order_request.nil?

        @connection.call(
          :POST,
          '/ssl/order',
          type: OpenapiClient::Models::ServiceOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: ssl_order_request
        )
      end

      def order_put(ssl_order_request:)
        raise ArgumentError, 'ssl_order_request is required' if ssl_order_request.nil?

        @connection.call(
          :PUT,
          '/ssl/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: ssl_order_request
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/ssl/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
