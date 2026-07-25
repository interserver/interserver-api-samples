# frozen_string_literal: true

module OpenapiClient
  module Api
    class Account::Oauth
      def initialize(connection)
        @connection = connection
      end

      def delete(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/account/oauth/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def logout(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/account/oauth/{name}/logout'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
