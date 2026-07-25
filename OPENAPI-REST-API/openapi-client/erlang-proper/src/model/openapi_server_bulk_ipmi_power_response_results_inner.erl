-module(openapi_server_bulk_ipmi_power_response_results_inner).

-include("openapi.hrl").

-export([openapi_server_bulk_ipmi_power_response_results_inner/0]).

-export([openapi_server_bulk_ipmi_power_response_results_inner/1]).

-export_type([openapi_server_bulk_ipmi_power_response_results_inner/0]).

-type openapi_server_bulk_ipmi_power_response_results_inner() ::
  [ {'id', integer() }
  | {'asset', integer() }
  | {'text', binary() }
  | {'error', binary() }
  ].


openapi_server_bulk_ipmi_power_response_results_inner() ->
    openapi_server_bulk_ipmi_power_response_results_inner([]).

openapi_server_bulk_ipmi_power_response_results_inner(Fields) ->
  Default = [ {'id', integer() }
            , {'asset', integer() }
            , {'text', binary() }
            , {'error', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

