-module(interserver_api_get_scrub_ip_details_200_response_service_info).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_service_info/0]).

-type interserver_api_get_scrub_ip_details_200_response_service_info() ::
    #{ 'scrub_ip_id' => binary(),
       'scrub_ip_type' => binary(),
       'scrub_ip_custid' => binary(),
       'scrub_ip_order_date' => binary(),
       'scrub_ip_ip' => binary(),
       'scrub_ip_service_id' => binary(),
       'scrub_ip_service_module' => binary(),
       'scrub_ip_status' => binary(),
       'scrub_ip_invoice' => binary(),
       'scrub_ip_currency' => binary(),
       'scrub_ip_coupon' => binary(),
       'scrub_ip_comment' => binary()
     }.

encode(#{ 'scrub_ip_id' := ScrubIpId,
          'scrub_ip_type' := ScrubIpType,
          'scrub_ip_custid' := ScrubIpCustid,
          'scrub_ip_order_date' := ScrubIpOrderDate,
          'scrub_ip_ip' := ScrubIpIp,
          'scrub_ip_service_id' := ScrubIpServiceId,
          'scrub_ip_service_module' := ScrubIpServiceModule,
          'scrub_ip_status' := ScrubIpStatus,
          'scrub_ip_invoice' := ScrubIpInvoice,
          'scrub_ip_currency' := ScrubIpCurrency,
          'scrub_ip_coupon' := ScrubIpCoupon,
          'scrub_ip_comment' := ScrubIpComment
        }) ->
    #{ 'scrub_ip_id' => ScrubIpId,
       'scrub_ip_type' => ScrubIpType,
       'scrub_ip_custid' => ScrubIpCustid,
       'scrub_ip_order_date' => ScrubIpOrderDate,
       'scrub_ip_ip' => ScrubIpIp,
       'scrub_ip_service_id' => ScrubIpServiceId,
       'scrub_ip_service_module' => ScrubIpServiceModule,
       'scrub_ip_status' => ScrubIpStatus,
       'scrub_ip_invoice' => ScrubIpInvoice,
       'scrub_ip_currency' => ScrubIpCurrency,
       'scrub_ip_coupon' => ScrubIpCoupon,
       'scrub_ip_comment' => ScrubIpComment
     }.
