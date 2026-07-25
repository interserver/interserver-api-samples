# frozen_string_literal: true

module OpenapiClient
  module Api
    class Vps::Backups
      def initialize(connection)
        @connection = connection
      end

      def bulk_destroy(id:, file:, all: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'file is required' if file.nil?

        @connection.call(
          :DELETE,
          '/vps/{id}/backups'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'all' => all, 'file' => file }
        )
      end

      def bulk_partial_update(id:, download_qs_backup_request:, all: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'download_qs_backup_request is required' if download_qs_backup_request.nil?

        @connection.call(
          :PATCH,
          '/vps/{id}/backups'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::DownloadQsBackup200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'all' => all },
          body: download_qs_backup_request
        )
      end

      def list(id:, all: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/vps/{id}/backups'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::VpsBackupRows,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'all' => all }
        )
      end
    end
  end
end
