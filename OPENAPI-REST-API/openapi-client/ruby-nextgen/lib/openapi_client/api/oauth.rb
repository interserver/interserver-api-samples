# frozen_string_literal: true

module OpenapiClient
  module Api
    class Oauth
      def initialize(connection)
        @connection = connection
      end

      def bulk_partial_update(patch_oauth_two_factor_request:)
        raise ArgumentError, 'patch_oauth_two_factor_request is required' if patch_oauth_two_factor_request.nil?

        @connection.call(
          :PATCH,
          '/oauth',
          type: OpenapiClient::Models::PatchOauthTwoFactor200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: patch_oauth_two_factor_request
        )
      end

      def create(provider:, post_oauth_callback_request: nil)
        raise ArgumentError, 'provider is required' if provider.nil?

        @connection.call(
          :POST,
          '/oauth',
          type: OpenapiClient::Models::PostOauthCallback200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'provider' => provider },
          body: post_oauth_callback_request
        )
      end

      def list(provider:)
        raise ArgumentError, 'provider is required' if provider.nil?

        @connection.call(
          :GET,
          '/oauth',
          type: OpenapiClient::Models::GetOauthRedirect200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'provider' => provider }
        )
      end
    end
  end
end
