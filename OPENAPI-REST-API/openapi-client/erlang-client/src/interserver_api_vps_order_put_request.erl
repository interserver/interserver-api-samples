-module(interserver_api_vps_order_put_request).

-export([encode/1]).

-export_type([interserver_api_vps_order_put_request/0]).

-type interserver_api_vps_order_put_request() ::
    #{ 'osDistro' := binary(),
       'slices' := integer(),
       'vpsPlatform' := binary(),
       'period' := integer(),
       'location' := integer(),
       'osVersion' := binary(),
       'hostname' := binary(),
       'rootpass' := binary(),
       'controlpanel' => binary(),
       'coupon' => binary(),
       'comment' => binary()
     }.

encode(#{ 'osDistro' := OsDistro,
          'slices' := Slices,
          'vpsPlatform' := VpsPlatform,
          'period' := Period,
          'location' := Location,
          'osVersion' := OsVersion,
          'hostname' := Hostname,
          'rootpass' := Rootpass,
          'controlpanel' := Controlpanel,
          'coupon' := Coupon,
          'comment' := Comment
        }) ->
    #{ 'osDistro' => OsDistro,
       'slices' => Slices,
       'vpsPlatform' => VpsPlatform,
       'period' => Period,
       'location' => Location,
       'osVersion' => OsVersion,
       'hostname' => Hostname,
       'rootpass' => Rootpass,
       'controlpanel' => Controlpanel,
       'coupon' => Coupon,
       'comment' => Comment
     }.
