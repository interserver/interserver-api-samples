# frozen_string_literal: true

module OpenapiClient
  module Api
    class Dns
      def initialize(connection)
        @connection = connection
      end

      def create(domain:, ip:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :POST,
          '/dns',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'domain' => domain, 'ip' => ip }
        )
      end

      def create_post(id:, name:, type:, content:, ttl: nil, prio: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'type is required' if type.nil?
        raise ArgumentError, 'content is required' if content.nil?

        @connection.call(
          :POST,
          '/dns/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'name' => name, 'type' => type, 'content' => content, 'ttl' => ttl, 'prio' => prio }
        )
      end

      def create_post_1(domain_id:, record_id:, name: nil, type: nil, content: nil, ttl: nil, prio: nil, disabled: nil, ordername: nil, auth: nil)
        raise ArgumentError, 'domain_id is required' if domain_id.nil?
        raise ArgumentError, 'record_id is required' if record_id.nil?

        @connection.call(
          :POST,
          '/dns/{domainId}/{recordId}'
            .gsub('{domainId}', ERB::Util.url_encode(domain_id.to_s))
            .gsub('{recordId}', ERB::Util.url_encode(record_id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'name' => name, 'type' => type, 'content' => content, 'ttl' => ttl, 'prio' => prio, 'disabled' => disabled, 'ordername' => ordername, 'auth' => auth }
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/dns/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete_delete(domain_id:, record_id:)
        raise ArgumentError, 'domain_id is required' if domain_id.nil?
        raise ArgumentError, 'record_id is required' if record_id.nil?

        @connection.call(
          :DELETE,
          '/dns/{domainId}/{recordId}'
            .gsub('{domainId}', ERB::Util.url_encode(domain_id.to_s))
            .gsub('{recordId}', ERB::Util.url_encode(record_id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/dns/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: [OpenapiClient::Models::DnsRecord],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/dns',
          type: [OpenapiClient::Models::DnsListItem],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
