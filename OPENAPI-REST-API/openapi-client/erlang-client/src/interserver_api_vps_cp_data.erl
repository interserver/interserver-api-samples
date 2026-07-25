-module(interserver_api_vps_cp_data).

-export([encode/1]).

-export_type([interserver_api_vps_cp_data/0]).

-type interserver_api_vps_cp_data() ::
    #{ 'name' => binary(),
       'cost' => integer()
     }.

encode(#{ 'name' := Name,
          'cost' := Cost
        }) ->
    #{ 'name' => Name,
       'cost' => Cost
     }.
