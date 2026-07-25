-module(interserver_api_vps_order_put_request).

-export([encode/1]).

-export_type([interserver_api_vps_order_put_request/0]).

-type interserver_api_vps_order_put_request() ::
    #{ 'osDistro' := binary(),
       'slices' := integer(),
       'vpsPlatform' := binary(),
       'controlpanel' => binary(),
       'period' := integer(),
       'location' := integer(),
       'osVersion' := binary(),
       'hostname' := binary(),
       'coupon' => binary(),
       'rootpass' := binary(),
       'comment' => binary()
     }.

encode(#{ 'osDistro' := OsDistro,
          'slices' := Slices,
          'vpsPlatform' := VpsPlatform,
          'controlpanel' := Controlpanel,
          'period' := Period,
          'location' := Location,
          'osVersion' := OsVersion,
          'hostname' := Hostname,
          'coupon' := Coupon,
          'rootpass' := Rootpass,
          'comment' := Comment
        }) ->
    #{ 'osDistro' => OsDistro,
       'slices' => Slices,
       'vpsPlatform' => VpsPlatform,
       'controlpanel' => Controlpanel,
       'period' => Period,
       'location' => Location,
       'osVersion' => OsVersion,
       'hostname' => Hostname,
       'coupon' => Coupon,
       'rootpass' => Rootpass,
       'comment' => Comment
     }.
