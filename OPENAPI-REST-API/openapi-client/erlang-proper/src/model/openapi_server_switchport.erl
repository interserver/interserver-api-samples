-module(openapi_server_switchport).

-include("openapi.hrl").

-export([openapi_server_switchport/0]).

-export([openapi_server_switchport/1]).

-export_type([openapi_server_switchport/0]).

-type openapi_server_switchport() ::
  [ {'switchport_id', integer() }
  | {'switch_id', binary() }
  | {'switch', binary() }
  | {'port', binary() }
  | {'blade', binary() }
  | {'justport', binary() }
  | {'graph_id', binary() }
  | {'asset_id', integer() }
  | {'vlans', list(binary()) }
  | {'vlans6', list(binary()) }
  ].


openapi_server_switchport() ->
    openapi_server_switchport([]).

openapi_server_switchport(Fields) ->
  Default = [ {'switchport_id', integer() }
            , {'switch_id', binary() }
            , {'switch', binary() }
            , {'port', binary() }
            , {'blade', binary() }
            , {'justport', binary() }
            , {'graph_id', binary() }
            , {'asset_id', integer() }
            , {'vlans', list(binary()) }
            , {'vlans6', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

