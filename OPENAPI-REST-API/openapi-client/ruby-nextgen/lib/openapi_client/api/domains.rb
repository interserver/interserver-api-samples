# frozen_string_literal: true

module OpenapiClient
  module Api
    class Domains
      def initialize(connection)
        @connection = connection
      end

      def contact(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/contact'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DomainContactDetails,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def contact_post(id:, domain_contact_details:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'domain_contact_details is required' if domain_contact_details.nil?

        @connection.call(
          :POST,
          '/domains/{id}/contact'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_contact_details
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/domains/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/domains/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CancelDomain200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def dnssec(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/dnssec'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DomainDnssecRecords,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def dnssec_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/domains/{id}/dnssec'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def dnssec_post(id:, domain_dnssec_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'domain_dnssec_request is required' if domain_dnssec_request.nil?

        @connection.call(
          :POST,
          '/domains/{id}/dnssec'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_dnssec_request
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::Domain,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/domains',
          type: [OpenapiClient::Models::DomainRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def nameservers(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/nameservers'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DomainNameserverGetResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def nameservers_delete(id:, index:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'index is required' if index.nil?

        @connection.call(
          :DELETE,
          '/domains/{id}/nameservers'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'index' => index }
        )
      end

      def nameservers_post(id:, domain_nameserver_post_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'domain_nameserver_post_request is required' if domain_nameserver_post_request.nil?

        @connection.call(
          :POST,
          '/domains/{id}/nameservers'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_nameserver_post_request
        )
      end

      def nameservers_put(id:, domain_nameserver_put_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'domain_nameserver_put_request is required' if domain_nameserver_put_request.nil?

        @connection.call(
          :PUT,
          '/domains/{id}/nameservers'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_nameserver_put_request
        )
      end

      def order
        @connection.call(
          :GET,
          '/domains/order',
          type: OpenapiClient::Models::DomainOrder,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_patch(domain_order_request:)
        raise ArgumentError, 'domain_order_request is required' if domain_order_request.nil?

        @connection.call(
          :PATCH,
          '/domains/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_order_request
        )
      end

      def order_post(domain_order_request:)
        raise ArgumentError, 'domain_order_request is required' if domain_order_request.nil?

        @connection.call(
          :POST,
          '/domains/order',
          type: OpenapiClient::Models::ServiceOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_order_request
        )
      end

      def order_put(domain_order_request:)
        raise ArgumentError, 'domain_order_request is required' if domain_order_request.nil?

        @connection.call(
          :PUT,
          '/domains/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_order_request
        )
      end

      def renew(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/renew'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def renew_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/domains/{id}/renew'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def transfer(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/transfer'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def transfer_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/domains/{id}/transfer'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def whois(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/domains/{id}/whois'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def whois_post(id:, domain_whois_privacy_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'domain_whois_privacy_request is required' if domain_whois_privacy_request.nil?

        @connection.call(
          :POST,
          '/domains/{id}/whois'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: domain_whois_privacy_request
        )
      end
    end
  end
end
