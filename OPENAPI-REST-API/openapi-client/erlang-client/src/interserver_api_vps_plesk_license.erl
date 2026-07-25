-module(interserver_api_vps_plesk_license).

-export([encode/1]).

-export_type([interserver_api_vps_plesk_license/0]).

-type interserver_api_vps_plesk_license() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'sub_name' => binary(),
       'cost' => integer()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'sub_name' := SubName,
          'cost' := Cost
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'sub_name' => SubName,
       'cost' => Cost
     }.
