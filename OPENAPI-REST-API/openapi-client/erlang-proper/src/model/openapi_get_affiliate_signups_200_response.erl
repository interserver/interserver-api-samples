-module(openapi_get_affiliate_signups_200_response).

-include("openapi.hrl").

-export([openapi_get_affiliate_signups_200_response/0]).

-export([openapi_get_affiliate_signups_200_response/1]).

-export_type([openapi_get_affiliate_signups_200_response/0]).

-type openapi_get_affiliate_signups_200_response() ::
  [ {'data', map() }
  ].


openapi_get_affiliate_signups_200_response() ->
    openapi_get_affiliate_signups_200_response([]).

openapi_get_affiliate_signups_200_response(Fields) ->
  Default = [ {'data', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

