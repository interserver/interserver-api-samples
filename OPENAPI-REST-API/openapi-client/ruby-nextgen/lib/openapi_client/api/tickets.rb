# frozen_string_literal: true

module OpenapiClient
  module Api
    class Tickets
      def initialize(connection)
        @connection = connection
      end

      def close(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/tickets/{id}/close'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::CloseTicketResponseSchema,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def create
        @connection.call(
          :POST,
          '/tickets',
          type: OpenapiClient::Models::Tickets,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def create_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/tickets/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ViewTicketResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/tickets/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ViewTicketResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/tickets/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ViewTicketResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list(page: nil, period: nil, view: nil)
        @connection.call(
          :GET,
          '/tickets',
          type: OpenapiClient::Models::Tickets,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'page' => page, 'period' => period, 'view' => view }
        )
      end

      def new
        @connection.call(
          :GET,
          '/tickets/new',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def new_post(ticket_new:)
        raise ArgumentError, 'ticket_new is required' if ticket_new.nil?

        @connection.call(
          :POST,
          '/tickets/new',
          type: OpenapiClient::Models::TicketNewResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: ticket_new
        )
      end

      def reply(id:, reply_ticket_request: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/tickets/{id}/reply'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ReplyTicketResponseSchema,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: reply_ticket_request
        )
      end

      def update(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :PUT,
          '/tickets/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::ViewTicketResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def update_post(id:, update_ticket: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/tickets/{id}/update'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::UpdateTicketResponseSchema,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: update_ticket
        )
      end
    end
  end
end
