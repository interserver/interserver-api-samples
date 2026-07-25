# frozen_string_literal: true

module OpenapiClient
  module Api
    class Servers
      def initialize(connection)
        @connection = connection
      end

      def bulk_ipmi_power(ids:)
        raise ArgumentError, 'ids is required' if ids.nil?

        @connection.call(
          :GET,
          '/servers/bulk/ipmi_power',
          type: OpenapiClient::Models::ServerBulkIpmiPowerResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'ids' => ids }
        )
      end

      def cancel(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/servers/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ServersCancel200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/servers/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/servers/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::Server,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def ipmi_live(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/servers/{id}/ipmi_live'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ServerIpmiLiveInfo,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def ipmi_live_post(id:, ip:, asset: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :POST,
          '/servers/{id}/ipmi_live'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ServerIpmiLiveInfo,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'asset' => asset, 'ip' => ip }
        )
      end

      def ipmi_power(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/servers/{id}/ipmi_power'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def ipmi_power_post(id:, action:, asset: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'action is required' if action.nil?

        @connection.call(
          :POST,
          '/servers/{id}/ipmi_power'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'asset' => asset, 'action' => action }
        )
      end

      def list
        @connection.call(
          :GET,
          '/servers',
          type: [OpenapiClient::Models::ServerRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order
        @connection.call(
          :GET,
          '/servers/order',
          type: OpenapiClient::Models::ServerOrder,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_buy_now_server
        @connection.call(
          :GET,
          '/servers/order/buy_now_server',
          type: OpenapiClient::Models::BuyItNowServerOrder200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_buy_now_server_post(place_buy_now_server_request: nil)
        @connection.call(
          :POST,
          '/servers/order/buy_now_server',
          type: OpenapiClient::Models::ServersBuyNowResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: place_buy_now_server_request
        )
      end

      def order_post(server_order_post_request:)
        raise ArgumentError, 'server_order_post_request is required' if server_order_post_request.nil?

        @connection.call(
          :POST,
          '/servers/order',
          type: OpenapiClient::Models::AddServer200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: server_order_post_request
        )
      end

      def reverse_dns(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/servers/{id}/reverse_dns'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ReverseDnsEntries,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def reverse_dns_post(id:, reverse_dns_entries:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'reverse_dns_entries is required' if reverse_dns_entries.nil?

        @connection.call(
          :POST,
          '/servers/{id}/reverse_dns'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: reverse_dns_entries
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/servers/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
