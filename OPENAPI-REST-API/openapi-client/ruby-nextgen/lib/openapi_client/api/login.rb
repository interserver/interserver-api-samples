# frozen_string_literal: true

module OpenapiClient
  module Api
    class Login
      def initialize(connection)
        @connection = connection
      end

      def create(login:, passwd:, remember: nil, g_recaptcha_response: nil, tfa: nil)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'passwd is required' if passwd.nil?

        @connection.call(
          :POST,
          '/login',
          type: OpenapiClient::Models::LoginSuccessResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'login' => login, 'passwd' => passwd, 'remember' => remember, 'g-recaptcha-response' => g_recaptcha_response, 'tfa' => tfa }
        )
      end

      def list
        @connection.call(
          :GET,
          '/login',
          type: OpenapiClient::Models::LoginInfo,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
