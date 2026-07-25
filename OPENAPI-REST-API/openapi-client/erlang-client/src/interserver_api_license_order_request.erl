-module(interserver_api_license_order_request).

-export([encode/1]).

-export_type([interserver_api_license_order_request/0]).

-type interserver_api_license_order_request() ::
    #{ 'package' := integer(),
       'ip' := binary(),
       'tos' := boolean(),
       'frequency' => integer(),
       'coupon' => binary(),
       'comment' => binary()
     }.

encode(#{ 'package' := Package,
          'ip' := Ip,
          'tos' := Tos,
          'frequency' := Frequency,
          'coupon' := Coupon,
          'comment' := Comment
        }) ->
    #{ 'package' => Package,
       'ip' => Ip,
       'tos' => Tos,
       'frequency' => Frequency,
       'coupon' => Coupon,
       'comment' => Comment
     }.
