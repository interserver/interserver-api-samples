-module(interserver_api_website_row).

-export([encode/1]).

-export_type([interserver_api_website_row/0]).

-type interserver_api_website_row() ::
    #{ 'website_id' := binary(),
       'website_hostname' := binary(),
       'repeat_invoices_cost' := binary(),
       'website_status' := binary(),
       'services_name' := binary(),
       'website_comment' := binary()
     }.

encode(#{ 'website_id' := WebsiteId,
          'website_hostname' := WebsiteHostname,
          'repeat_invoices_cost' := RepeatInvoicesCost,
          'website_status' := WebsiteStatus,
          'services_name' := ServicesName,
          'website_comment' := WebsiteComment
        }) ->
    #{ 'website_id' => WebsiteId,
       'website_hostname' => WebsiteHostname,
       'repeat_invoices_cost' => RepeatInvoicesCost,
       'website_status' => WebsiteStatus,
       'services_name' => ServicesName,
       'website_comment' => WebsiteComment
     }.
