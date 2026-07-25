-module(interserver_api_floating_ip_order_request).

-export([encode/1]).

-export_type([interserver_api_floating_ip_order_request/0]).

-type interserver_api_floating_ip_order_request() ::
    #{ 'serviceType' := integer(),
       'coupon' => binary(),
       'comment' => binary()
     }.

encode(#{ 'serviceType' := ServiceType,
          'coupon' := Coupon,
          'comment' := Comment
        }) ->
    #{ 'serviceType' => ServiceType,
       'coupon' => Coupon,
       'comment' => Comment
     }.
