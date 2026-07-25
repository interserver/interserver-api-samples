-module(interserver_api_ip_object).

-export([encode/1]).

-export_type([interserver_api_ip_object/0]).

-type interserver_api_ip_object() ::
    #{ 'ip' := binary()
     }.

encode(#{ 'ip' := Ip
        }) ->
    #{ 'ip' => Ip
     }.
