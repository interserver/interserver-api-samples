-module(interserver_api_mail_row).

-export([encode/1]).

-export_type([interserver_api_mail_row/0]).

-type interserver_api_mail_row() ::
    #{ 'mail_id' => binary(),
       'repeat_invoices_cost' => binary(),
       'mail_username' => binary(),
       'mail_status' => binary(),
       'services_name' => binary()
     }.

encode(#{ 'mail_id' := MailId,
          'repeat_invoices_cost' := RepeatInvoicesCost,
          'mail_username' := MailUsername,
          'mail_status' := MailStatus,
          'services_name' := ServicesName
        }) ->
    #{ 'mail_id' => MailId,
       'repeat_invoices_cost' => RepeatInvoicesCost,
       'mail_username' => MailUsername,
       'mail_status' => MailStatus,
       'services_name' => ServicesName
     }.
