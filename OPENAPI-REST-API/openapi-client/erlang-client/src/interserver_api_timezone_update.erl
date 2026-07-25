-module(interserver_api_timezone_update).

-export([encode/1]).

-export_type([interserver_api_timezone_update/0]).

-type interserver_api_timezone_update() ::
    #{ 'timezone' := binary()
     }.

encode(#{ 'timezone' := Timezone
        }) ->
    #{ 'timezone' => Timezone
     }.
