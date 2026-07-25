-module(interserver_api_backup_order_put_request).

-export([encode/1]).

-export_type([interserver_api_backup_order_put_request/0]).

-type interserver_api_backup_order_put_request() ::
    #{ 'validateOnly' => boolean(),
       'serviceType' => integer(),
       'coupon' => binary()
     }.

encode(#{ 'validateOnly' := ValidateOnly,
          'serviceType' := ServiceType,
          'coupon' := Coupon
        }) ->
    #{ 'validateOnly' => ValidateOnly,
       'serviceType' => ServiceType,
       'coupon' => Coupon
     }.
