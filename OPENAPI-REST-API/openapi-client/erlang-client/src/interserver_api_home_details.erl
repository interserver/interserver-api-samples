-module(interserver_api_home_details).

-export([encode/1]).

-export_type([interserver_api_home_details/0]).

-type interserver_api_home_details() ::
    #{ 'modules' => interserver_api_home_details_modules:interserver_api_home_details_modules()
     }.

encode(#{ 'modules' := Modules
        }) ->
    #{ 'modules' => Modules
     }.
