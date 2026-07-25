-module(interserver_api_vps_service_extra).

-export([encode/1]).

-export_type([interserver_api_vps_service_extra/0]).

-type interserver_api_vps_service_extra() ::
    #{ 'spice' => integer(),
       'snapshots' => list()
     }.

encode(#{ 'spice' := Spice,
          'snapshots' := Snapshots
        }) ->
    #{ 'spice' => Spice,
       'snapshots' => Snapshots
     }.
