# frozen_string_literal: true

module OpenapiClient
  module Api
    class Affiliate
      def initialize(connection)
        @connection = connection
      end

      def banners
        @connection.call(
          :GET,
          '/affiliate/banners',
          type: [OpenapiClient::Models::AffiliateBannerRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def dock_setup(affiliate_dock_title: nil, affiliate_dock_description: nil, referrer_coupon: nil)
        @connection.call(
          :POST,
          '/affiliate/dock_setup',
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'affiliate_dock_title' => affiliate_dock_title, 'affiliate_dock_description' => affiliate_dock_description, 'referrer_coupon' => referrer_coupon }
        )
      end

      def download(st: nil, ex: nil, year: nil)
        @connection.call(
          :GET,
          '/affiliate/download',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'st' => st, 'ex' => ex, 'year' => year }
        )
      end

      def payment_setup(affiliate_paypal: nil, affiliate_payment_method: nil)
        @connection.call(
          :POST,
          '/affiliate/payment_setup',
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'affiliate_paypal' => affiliate_paypal, 'affiliate_payment_method' => affiliate_payment_method }
        )
      end

      def rich_report
        @connection.call(
          :GET,
          '/affiliate/rich_report',
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def sales_graph(days: nil)
        @connection.call(
          :GET,
          '/affiliate/sales_graph',
          type: OpenapiClient::Models::StatusMonthlyBreakdown,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'days' => days }
        )
      end

      def signups(st: nil)
        @connection.call(
          :GET,
          '/affiliate/signups',
          type: OpenapiClient::Models::GetAffiliateSignups200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'st' => st }
        )
      end

      def traffic_graph(days: nil)
        @connection.call(
          :GET,
          '/affiliate/traffic_graph',
          type: OpenapiClient::Models::MonthlyCounts,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'days' => days }
        )
      end

      def web_traffic
        @connection.call(
          :GET,
          '/affiliate/web_traffic',
          type: [OpenapiClient::Models::AffiliateTrafficRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
