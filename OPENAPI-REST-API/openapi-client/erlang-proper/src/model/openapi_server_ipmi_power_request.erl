-module(openapi_server_ipmi_power_request).

-include("openapi.hrl").

-export([openapi_server_ipmi_power_request/0]).

-export([openapi_server_ipmi_power_request/1]).

-export_type([openapi_server_ipmi_power_request/0]).

-type openapi_server_ipmi_power_request() ::
  [ {'action', binary() }
  | {'asset', integer() }
  ].


openapi_server_ipmi_power_request() ->
    openapi_server_ipmi_power_request([]).

openapi_server_ipmi_power_request(Fields) ->
  Default = [ {'action', elements([<<"cycle">>, <<"reset">>, <<"on">>, <<"off">>, <<"soft">>]) }
            , {'asset', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

