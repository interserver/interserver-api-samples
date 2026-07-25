-module(interserver_api_quickserver_service_extra).

-export([encode/1]).

-export_type([interserver_api_quickserver_service_extra/0]).

-type interserver_api_quickserver_service_extra() ::
    #{ 'platform' => binary()
     }.

encode(#{ 'platform' := Platform
        }) ->
    #{ 'platform' => Platform
     }.
