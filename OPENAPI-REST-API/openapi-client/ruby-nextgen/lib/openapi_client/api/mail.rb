# frozen_string_literal: true

module OpenapiClient
  module Api
    class Mail
      def initialize(connection)
        @connection = connection
      end

      def advsend(id:, send_mail_adv:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'send_mail_adv is required' if send_mail_adv.nil?

        @connection.call(
          :POST,
          '/mail/{id}/advsend'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: send_mail_adv
        )
      end

      def alerts(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/alerts'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailAlertsResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def alerts_delete(id:, delete_mail_alert_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'delete_mail_alert_request is required' if delete_mail_alert_request.nil?

        @connection.call(
          :DELETE,
          '/mail/{id}/alerts'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: delete_mail_alert_request
        )
      end

      def alerts_post(id:, mail_alert_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'mail_alert_request is required' if mail_alert_request.nil?

        @connection.call(
          :POST,
          '/mail/{id}/alerts'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: mail_alert_request
        )
      end

      def alerts_put(id:, mail_alert_update_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'mail_alert_update_request is required' if mail_alert_update_request.nil?

        @connection.call(
          :PUT,
          '/mail/{id}/alerts'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: mail_alert_update_request
        )
      end

      def blocks(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/blocks'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailBlocks,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def blocks_delete(id:, email: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/mail/{id}/blocks/delete'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          form: { 'email' => email }
        )
      end

      def cancel(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/mail/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailCancel200Response,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def create(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/mail/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delist(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/delist'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailDelistResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def delist_post(id:, mail_delist_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'mail_delist_request is required' if mail_delist_request.nil?

        @connection.call(
          :POST,
          '/mail/{id}/delist'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: mail_delist_request
        )
      end

      def deliverability(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/deliverability'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailDeliverabilityResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailSchema,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def list
        @connection.call(
          :GET,
          '/mail',
          type: [OpenapiClient::Models::MailRow],
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def log(id:, id2: nil, origin: nil, mx: nil, from: nil, to: nil, subject: nil, mailid: nil, message_id: nil, replyto: nil, headerfrom: nil, delivered: nil, skip: nil, limit: nil, start_date: nil, end_date: nil, sort: nil, dir: nil, groupby: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/log'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailLog,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'id' => id2, 'origin' => origin, 'mx' => mx, 'from' => from, 'to' => to, 'subject' => subject, 'mailid' => mailid, 'messageId' => message_id, 'replyto' => replyto, 'headerfrom' => headerfrom, 'delivered' => delivered, 'skip' => skip, 'limit' => limit, 'startDate' => start_date, 'endDate' => end_date, 'sort' => sort, 'dir' => dir, 'groupby' => groupby }
        )
      end

      def order
        @connection.call(
          :GET,
          '/mail/order',
          type: OpenapiClient::Models::MailOrder,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def order_post(mail_order_request:)
        raise ArgumentError, 'mail_order_request is required' if mail_order_request.nil?

        @connection.call(
          :POST,
          '/mail/order',
          type: OpenapiClient::Models::ServiceOrderPostResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: mail_order_request
        )
      end

      def order_put(mail_order_request:)
        raise ArgumentError, 'mail_order_request is required' if mail_order_request.nil?

        @connection.call(
          :PUT,
          '/mail/order',
          type: nil,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: mail_order_request
        )
      end

      def reset_password(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/reset_password'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end

      def send(id:, send_mail:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'send_mail is required' if send_mail.nil?

        @connection.call(
          :POST,
          '/mail/{id}/send'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::GenericResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          body: send_mail
        )
      end

      def stats(id:, time: nil)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/stats'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::MailStatsType,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth'],
          query: { 'time' => time }
        )
      end

      def welcome_email(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/mail/{id}/welcome_email'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: OpenapiClient::Models::SuccessTextResponse,
          auth: ['sessionIdCookieAuth', 'apiKeyAuth', 'sessionIdHeaderAuth']
        )
      end
    end
  end
end
