-module(interserver_api_server_switchport).

-export([encode/1]).

-export_type([interserver_api_server_switchport/0]).

-type interserver_api_server_switchport() ::
    #{ 'switchport_id' := integer(),
       'switch_id' := binary(),
       'switch' := binary(),
       'port' := binary(),
       'blade' := binary(),
       'justport' := binary(),
       'graph_id' := binary(),
       'asset_id' := integer(),
       'vlans' => list(),
       'vlans6' => list()
     }.

encode(#{ 'switchport_id' := SwitchportId,
          'switch_id' := SwitchId,
          'switch' := Switch,
          'port' := Port,
          'blade' := Blade,
          'justport' := Justport,
          'graph_id' := GraphId,
          'asset_id' := AssetId,
          'vlans' := Vlans,
          'vlans6' := Vlans6
        }) ->
    #{ 'switchport_id' => SwitchportId,
       'switch_id' => SwitchId,
       'switch' => Switch,
       'port' => Port,
       'blade' => Blade,
       'justport' => Justport,
       'graph_id' => GraphId,
       'asset_id' => AssetId,
       'vlans' => Vlans,
       'vlans6' => Vlans6
     }.
