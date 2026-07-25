-module(interserver_api_backup_order_put_response).

-export([encode/1]).

-export_type([interserver_api_backup_order_put_response/0]).

-type interserver_api_backup_order_put_response() ::
    #{ 'continue' => boolean(),
       'errors' => list(),
       'serviceType' => integer(),
       'serviceCost' => binary(),
       'originalCost' => binary(),
       'repeatServiceCost' => binary(),
       'hostname' => binary(),
       'password' => binary(),
       'coupon' => binary(),
       'couponCode' => integer()
     }.

encode(#{ 'continue' := Continue,
          'errors' := Errors,
          'serviceType' := ServiceType,
          'serviceCost' := ServiceCost,
          'originalCost' := OriginalCost,
          'repeatServiceCost' := RepeatServiceCost,
          'hostname' := Hostname,
          'password' := Password,
          'coupon' := Coupon,
          'couponCode' := CouponCode
        }) ->
    #{ 'continue' => Continue,
       'errors' => Errors,
       'serviceType' => ServiceType,
       'serviceCost' => ServiceCost,
       'originalCost' => OriginalCost,
       'repeatServiceCost' => RepeatServiceCost,
       'hostname' => Hostname,
       'password' => Password,
       'coupon' => Coupon,
       'couponCode' => CouponCode
     }.
