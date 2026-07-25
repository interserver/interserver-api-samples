-module(interserver_api_website_service_info).

-export([encode/1]).

-export_type([interserver_api_website_service_info/0]).

-type interserver_api_website_service_info() ::
    #{ 'website_id' => binary(),
       'website_server' => binary(),
       'website_type' => binary(),
       'website_currency' => binary(),
       'website_order_date' => binary(),
       'website_custid' => binary(),
       'website_ip' => binary(),
       'website_status' => binary(),
       'website_invoice' => binary(),
       'website_coupon' => binary(),
       'website_extra' => binary(),
       'website_hostname' => binary(),
       'website_comment' => binary(),
       'website_username' => binary(),
       'website_server_status' => binary()
     }.

encode(#{ 'website_id' := WebsiteId,
          'website_server' := WebsiteServer,
          'website_type' := WebsiteType,
          'website_currency' := WebsiteCurrency,
          'website_order_date' := WebsiteOrderDate,
          'website_custid' := WebsiteCustid,
          'website_ip' := WebsiteIp,
          'website_status' := WebsiteStatus,
          'website_invoice' := WebsiteInvoice,
          'website_coupon' := WebsiteCoupon,
          'website_extra' := WebsiteExtra,
          'website_hostname' := WebsiteHostname,
          'website_comment' := WebsiteComment,
          'website_username' := WebsiteUsername,
          'website_server_status' := WebsiteServerStatus
        }) ->
    #{ 'website_id' => WebsiteId,
       'website_server' => WebsiteServer,
       'website_type' => WebsiteType,
       'website_currency' => WebsiteCurrency,
       'website_order_date' => WebsiteOrderDate,
       'website_custid' => WebsiteCustid,
       'website_ip' => WebsiteIp,
       'website_status' => WebsiteStatus,
       'website_invoice' => WebsiteInvoice,
       'website_coupon' => WebsiteCoupon,
       'website_extra' => WebsiteExtra,
       'website_hostname' => WebsiteHostname,
       'website_comment' => WebsiteComment,
       'website_username' => WebsiteUsername,
       'website_server_status' => WebsiteServerStatus
     }.
