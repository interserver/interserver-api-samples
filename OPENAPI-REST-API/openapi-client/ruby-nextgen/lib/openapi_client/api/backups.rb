# frozen_string_literal: true

module OpenapiClient
  module Api
    class Backups
      def initialize(connection)
        @connection = connection
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/backups/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/backups/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CancelBackup200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/backups/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::Backup,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/backups',
          type: [OpenapiClient::Models::BackupRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def login(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/backups/{id}/login'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::BackupLoginResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order
        @connection.call(
          :GET,
          '/backups/order',
          type: OpenapiClient::Models::BackupsOrder,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(validate_only: nil, service_type: nil, coupon: nil)
        @connection.call(
          :POST,
          '/backups/order',
          type: OpenapiClient::Models::BackupOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'validateOnly' => validate_only, 'serviceType' => service_type, 'coupon' => coupon }
        )
      end

      def order_put(validate_only: nil, service_type: nil, coupon: nil)
        @connection.call(
          :PUT,
          '/backups/order',
          type: OpenapiClient::Models::BackupOrderPutResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'validateOnly' => validate_only, 'serviceType' => service_type, 'coupon' => coupon }
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/backups/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
