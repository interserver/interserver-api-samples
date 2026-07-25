-module(openapi_server_bulk_ipmi_power_response).

-include("openapi.hrl").

-export([openapi_server_bulk_ipmi_power_response/0]).

-export([openapi_server_bulk_ipmi_power_response/1]).

-export_type([openapi_server_bulk_ipmi_power_response/0]).

-type openapi_server_bulk_ipmi_power_response() ::
  [ {'results', list(openapi_server_bulk_ipmi_power_response_results_inner:openapi_server_bulk_ipmi_power_response_results_inner()) }
  ].


openapi_server_bulk_ipmi_power_response() ->
    openapi_server_bulk_ipmi_power_response([]).

openapi_server_bulk_ipmi_power_response(Fields) ->
  Default = [ {'results', list(openapi_server_bulk_ipmi_power_response_results_inner:openapi_server_bulk_ipmi_power_response_results_inner()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

