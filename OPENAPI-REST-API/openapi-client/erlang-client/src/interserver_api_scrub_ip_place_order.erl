-module(interserver_api_scrub_ip_place_order).

-export([encode/1]).

-export_type([interserver_api_scrub_ip_place_order/0]).

-type interserver_api_scrub_ip_place_order() ::
    #{ 'service_type' := integer(),
       'ip' := binary()
     }.

encode(#{ 'service_type' := ServiceType,
          'ip' := Ip
        }) ->
    #{ 'service_type' => ServiceType,
       'ip' => Ip
     }.
