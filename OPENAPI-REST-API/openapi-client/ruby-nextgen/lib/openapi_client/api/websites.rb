# frozen_string_literal: true

module OpenapiClient
  module Api
    class Websites
      def initialize(connection)
        @connection = connection
      end

      def buy_ip(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/websites/{id}/buy_ip'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GetWebsiteBuyIp200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def buy_ip_post(id:, post_website_buy_ip_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'post_website_buy_ip_request is required' if post_website_buy_ip_request.nil?

        @connection.call(
          :POST,
          '/websites/{id}/buy_ip'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::PostWebsiteBuyIp200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: post_website_buy_ip_request
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/websites/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/websites/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::WebhostingCancel200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/websites/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::Website,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/websites',
          type: [OpenapiClient::Models::WebsiteRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def login(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/websites/{id}/login'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::WebsiteLoginResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def migration(id:, post_website_migration_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'post_website_migration_request is required' if post_website_migration_request.nil?

        @connection.call(
          :POST,
          '/websites/{id}/migration'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::PostWebsiteMigration200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: post_website_migration_request
        )
      end

      def order
        @connection.call(
          :GET,
          '/websites/order',
          type: OpenapiClient::Models::WebsitesOrder,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(website_order_post_request:)
        raise ArgumentError, 'website_order_post_request is required' if website_order_post_request.nil?

        @connection.call(
          :POST,
          '/websites/order',
          type: OpenapiClient::Models::ServiceOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: website_order_post_request
        )
      end

      def order_put(website_order_put_request:)
        raise ArgumentError, 'website_order_put_request is required' if website_order_put_request.nil?

        @connection.call(
          :PUT,
          '/websites/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: website_order_put_request
        )
      end

      def reverse_dns(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/websites/{id}/reverse_dns'
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
          '/websites/{id}/reverse_dns'
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
          '/websites/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
