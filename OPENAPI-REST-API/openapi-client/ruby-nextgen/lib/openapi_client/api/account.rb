# frozen_string_literal: true

module OpenapiClient
  module Api
    class Account
      def initialize(connection)
        @connection = connection
      end

      def apikey
        @connection.call(
          :POST,
          '/account/apikey',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def call_2fa
        @connection.call(
          :GET,
          '/account/2fa',
          type: OpenapiClient::Models::GetAccountTfaSetup200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def call_2fa_delete
        @connection.call(
          :DELETE,
          '/account/2fa',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def call_2fa_post(2fa_google_code_:)
        raise ArgumentError, '2fa_google_code_ is required' if 2fa_google_code_.nil?

        @connection.call(
          :POST,
          '/account/2fa',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { '2fa_google_code' => 2fa_google_code_ }
        )
      end

      def countries(fetch_by: nil)
        @connection.call(
          :GET,
          '/account/countries',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'fetch_by' => fetch_by }
        )
      end

      def create(name:, address:, city:, state:, zip:, country:, phone:, company: nil, address2: nil, locale: nil, email_invoices: nil, email_abuse: nil, disable_reset: nil, disable_reinstall: nil, disable_server_notifications: nil, disable_email_notifications: nil, gstin: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'address is required' if address.nil?
        raise ArgumentError, 'city is required' if city.nil?
        raise ArgumentError, 'state is required' if state.nil?
        raise ArgumentError, 'zip is required' if zip.nil?
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'phone is required' if phone.nil?

        @connection.call(
          :POST,
          '/account',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'name' => name, 'company' => company, 'address' => address, 'address2' => address2, 'city' => city, 'state' => state, 'zip' => zip, 'country' => country, 'phone' => phone, 'locale' => locale, 'email_invoices' => email_invoices, 'email_abuse' => email_abuse, 'disable_reset' => disable_reset, 'disable_reinstall' => disable_reinstall, 'disable_server_notifications' => disable_server_notifications, 'disable_email_notifications' => disable_email_notifications, 'gstin' => gstin }
        )
      end

      def currencies
        @connection.call(
          :GET,
          '/account/currencies',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def features(disable_reset: nil, disable_reinstall: nil)
        @connection.call(
          :POST,
          '/account/features',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'disable_reset' => disable_reset, 'disable_reinstall' => disable_reinstall }
        )
      end

      def iplimits(start:, end_:)
        raise ArgumentError, 'start is required' if start.nil?
        raise ArgumentError, 'end_ is required' if end_.nil?

        @connection.call(
          :POST,
          '/account/iplimits',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'start' => start, 'end' => end_ }
        )
      end

      def iplimits_patch(ip_limit_range: nil)
        @connection.call(
          :PATCH,
          '/account/iplimits',
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: ip_limit_range
        )
      end

      def list
        @connection.call(
          :GET,
          '/account',
          type: OpenapiClient::Models::AccountInfo,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def locales
        @connection.call(
          :GET,
          '/account/locales',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def password(password:)
        raise ArgumentError, 'password is required' if password.nil?

        @connection.call(
          :POST,
          '/account/password',
          type: OpenapiClient::Models::TextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'password' => password }
        )
      end

      def sshkey(ssh_key: nil)
        @connection.call(
          :POST,
          '/account/sshkey',
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'ssh_key' => ssh_key }
        )
      end

      def timezones
        @connection.call(
          :GET,
          '/account/timezones',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
