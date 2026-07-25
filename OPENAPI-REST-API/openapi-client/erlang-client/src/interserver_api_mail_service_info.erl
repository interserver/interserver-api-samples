-module(interserver_api_mail_service_info).

-export([encode/1]).

-export_type([interserver_api_mail_service_info/0]).

-type interserver_api_mail_service_info() ::
    #{ 'mail_id' := binary(),
       'mail_username' => binary(),
       'mail_type' := binary(),
       'mail_currency' := binary(),
       'mail_order_date' := binary(),
       'mail_custid' := binary(),
       'mail_quota' := binary(),
       'mail_ip' => binary(),
       'mail_status' := binary(),
       'mail_invoice' := binary(),
       'mail_coupon' => binary(),
       'mail_extra' => binary(),
       'mail_server_status' => binary(),
       'mail_comment' => binary()
     }.

encode(#{ 'mail_id' := MailId,
          'mail_username' := MailUsername,
          'mail_type' := MailType,
          'mail_currency' := MailCurrency,
          'mail_order_date' := MailOrderDate,
          'mail_custid' := MailCustid,
          'mail_quota' := MailQuota,
          'mail_ip' := MailIp,
          'mail_status' := MailStatus,
          'mail_invoice' := MailInvoice,
          'mail_coupon' := MailCoupon,
          'mail_extra' := MailExtra,
          'mail_server_status' := MailServerStatus,
          'mail_comment' := MailComment
        }) ->
    #{ 'mail_id' => MailId,
       'mail_username' => MailUsername,
       'mail_type' => MailType,
       'mail_currency' => MailCurrency,
       'mail_order_date' => MailOrderDate,
       'mail_custid' => MailCustid,
       'mail_quota' => MailQuota,
       'mail_ip' => MailIp,
       'mail_status' => MailStatus,
       'mail_invoice' => MailInvoice,
       'mail_coupon' => MailCoupon,
       'mail_extra' => MailExtra,
       'mail_server_status' => MailServerStatus,
       'mail_comment' => MailComment
     }.
