-module(interserver_api_hostname_object).

-export([encode/1]).

-export_type([interserver_api_hostname_object/0]).

-type interserver_api_hostname_object() ::
    #{ 'hostname' => binary()
     }.

encode(#{ 'hostname' := Hostname
        }) ->
    #{ 'hostname' => Hostname
     }.
