# frozen_string_literal: true

module OpenapiClient
  module Api
    class Websites::Backups
      def initialize(connection)
        @connection = connection
      end

      def list(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/websites/{id}/backups'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::WebsiteBackups,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
