-module(interserver_api_website_order_post_request).

-export([encode/1]).

-export_type([interserver_api_website_order_post_request/0]).

-type interserver_api_website_order_post_request() ::
    #{ 'hostname' := binary(),
       'packageId' := integer(),
       'rootpass' => binary(),
       'period' => integer(),
       'coupon' => binary(),
       'serviceOfferId' => integer(),
       'script' => integer(),
       'comment' => binary(),
       'registerDomain' => boolean()
     }.

encode(#{ 'hostname' := Hostname,
          'packageId' := PackageId,
          'rootpass' := Rootpass,
          'period' := Period,
          'coupon' := Coupon,
          'serviceOfferId' := ServiceOfferId,
          'script' := Script,
          'comment' := Comment,
          'registerDomain' := RegisterDomain
        }) ->
    #{ 'hostname' => Hostname,
       'packageId' => PackageId,
       'rootpass' => Rootpass,
       'period' => Period,
       'coupon' => Coupon,
       'serviceOfferId' => ServiceOfferId,
       'script' => Script,
       'comment' => Comment,
       'registerDomain' => RegisterDomain
     }.
