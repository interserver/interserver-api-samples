-module(openapi_get_account_locales_200_response_value).

-include("openapi.hrl").

-export([openapi_get_account_locales_200_response_value/0]).

-export([openapi_get_account_locales_200_response_value/1]).

-export_type([openapi_get_account_locales_200_response_value/0]).

-type openapi_get_account_locales_200_response_value() ::
  [ {'name', binary() }
  | {'local_name', binary() }
  ].


openapi_get_account_locales_200_response_value() ->
    openapi_get_account_locales_200_response_value([]).

openapi_get_account_locales_200_response_value(Fields) ->
  Default = [ {'name', binary() }
            , {'local_name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

