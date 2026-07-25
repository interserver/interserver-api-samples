-module(openapi_server_location1).

-include("openapi.hrl").

-export([openapi_server_location1/0]).

-export([openapi_server_location1/1]).

-export_type([openapi_server_location1/0]).

-type openapi_server_location1() ::
  [ {'location_id', integer() }
  | {'location_name', binary() }
  | {'location_lat', binary() }
  | {'location_long', binary() }
  | {'location_description', binary() }
  | {'location_ipmi_group', integer() }
  ].


openapi_server_location1() ->
    openapi_server_location1([]).

openapi_server_location1(Fields) ->
  Default = [ {'location_id', integer() }
            , {'location_name', binary() }
            , {'location_lat', binary() }
            , {'location_long', binary() }
            , {'location_description', binary() }
            , {'location_ipmi_group', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

