# frozen_string_literal: true

module OpenapiClient
  module Api
    class Mail::Rules
      def initialize(connection)
        @connection = connection
      end

      def create(id:, deny_rule_new:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'deny_rule_new is required' if deny_rule_new.nil?

        @connection.call(
          :POST,
          '/mail/{id}/rules'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: deny_rule_new
        )
      end

      def delete(id:, rule:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'rule is required' if rule.nil?

        @connection.call(
          :DELETE,
          '/mail/{id}/rules/{rule}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{rule}', ERB::Util.url_encode(rule.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/rules'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: [OpenapiClient::Models::DenyRuleRecord],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def update(id:, rule:, deny_rule_new:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'rule is required' if rule.nil?
        raise ArgumentError, 'deny_rule_new is required' if deny_rule_new.nil?

        @connection.call(
          :PUT,
          '/mail/{id}/rules/{rule}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{rule}', ERB::Util.url_encode(rule.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: deny_rule_new
        )
      end
    end
  end
end
