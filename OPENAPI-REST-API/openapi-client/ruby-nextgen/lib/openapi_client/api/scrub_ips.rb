# frozen_string_literal: true

module OpenapiClient
  module Api
    class ScrubIps
      def initialize(connection)
        @connection = connection
      end

      def create_filter(id:, create_filter:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'create_filter is required' if create_filter.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/create_filter'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CreateFilter201Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: create_filter
        )
      end

      def create_geo_rule(id:, create_geo_firewall_rule:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'create_geo_firewall_rule is required' if create_geo_firewall_rule.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/create_geo_rule'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CreateRule201Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: create_geo_firewall_rule
        )
      end

      def create_rule(id:, create_firewall_rule:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'create_firewall_rule is required' if create_firewall_rule.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/create_rule'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CreateRule201Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: create_firewall_rule
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/scrub_ips/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CancelScrubIp200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete_filter(id:, create_filter:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'create_filter is required' if create_filter.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/delete_filter'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DeleteFilter200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: create_filter
        )
      end

      def delete_geo_rule(id:, delete_geo_firewall_rule:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'delete_geo_firewall_rule is required' if delete_geo_firewall_rule.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/delete_geo_rule'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ScrubIpsDeleteRule200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: delete_geo_firewall_rule
        )
      end

      def delete_rule(id:, delete_firewall_rule:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'delete_firewall_rule is required' if delete_firewall_rule.nil?

        @connection.call(
          :POST,
          '/scrub_ips/{id}/delete_rule'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ScrubIpsDeleteRule200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: delete_firewall_rule
        )
      end

      def disable(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/scrub_ips/{id}/disable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DisableScrub200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def enable(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/scrub_ips/{id}/enable'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::EnableScrub200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def filter_types
        @connection.call(
          :GET,
          '/scrub_ips/filter_types',
          type: OpenapiClient::Models::ScrubIpFilterTypes,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/scrub_ips/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GetScrubIpDetails200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/scrub_ips',
          type: [OpenapiClient::Models::ScrubIpsRowSchema],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def logs(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/scrub_ips/{id}/logs'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: [OpenapiClient::Models::ScrubIpsLogRowSchema],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order
        @connection.call(
          :GET,
          '/scrub_ips/order',
          type: OpenapiClient::Models::GetOrderDetail200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(scrub_ip_place_order:)
        raise ArgumentError, 'scrub_ip_place_order is required' if scrub_ip_place_order.nil?

        @connection.call(
          :POST,
          '/scrub_ips/order',
          type: OpenapiClient::Models::PlaceScrubOrder201Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: scrub_ip_place_order
        )
      end

      def order_put(scrub_ip_place_order:)
        raise ArgumentError, 'scrub_ip_place_order is required' if scrub_ip_place_order.nil?

        @connection.call(
          :PUT,
          '/scrub_ips/order',
          type: OpenapiClient::Models::PutScrubIps200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: scrub_ip_place_order
        )
      end
    end
  end
end
