# frozen_string_literal: true

module OpenapiClient
  module Api
    class FloatingIps
      def initialize(connection)
        @connection = connection
      end

      def cancel(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/floating_ips/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::FloatingIpsCancel200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def change_ip(id:, ip:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :POST,
          '/floating_ips/{id}/change_ip'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'ip' => ip }
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/floating_ips/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/floating_ips/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/floating_ips',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order
        @connection.call(
          :GET,
          '/floating_ips/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(floating_ip_order_request:)
        raise ArgumentError, 'floating_ip_order_request is required' if floating_ip_order_request.nil?

        @connection.call(
          :POST,
          '/floating_ips/order',
          type: OpenapiClient::Models::ServiceOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: floating_ip_order_request
        )
      end

      def order_put(floating_ip_order_request:)
        raise ArgumentError, 'floating_ip_order_request is required' if floating_ip_order_request.nil?

        @connection.call(
          :PUT,
          '/floating_ips/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: floating_ip_order_request
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/floating_ips/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
