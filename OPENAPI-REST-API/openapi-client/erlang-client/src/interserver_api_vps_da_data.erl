-module(interserver_api_vps_da_data).

-export([encode/1]).

-export_type([interserver_api_vps_da_data/0]).

-type interserver_api_vps_da_data() ::
    #{ 'free' => interserver_api_vps_da_license:interserver_api_vps_da_license()
     }.

encode(#{ 'free' := Free
        }) ->
    #{ 'free' => Free
     }.
