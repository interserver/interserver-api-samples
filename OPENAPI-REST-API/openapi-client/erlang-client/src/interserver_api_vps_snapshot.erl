-module(interserver_api_vps_snapshot).

-export([encode/1]).

-export_type([interserver_api_vps_snapshot/0]).

-type interserver_api_vps_snapshot() ::
    #{ 'name' => binary(),
       'used' => integer(),
       'date' => integer()
     }.

encode(#{ 'name' := Name,
          'used' := Used,
          'date' := Date
        }) ->
    #{ 'name' => Name,
       'used' => Used,
       'date' => Date
     }.
