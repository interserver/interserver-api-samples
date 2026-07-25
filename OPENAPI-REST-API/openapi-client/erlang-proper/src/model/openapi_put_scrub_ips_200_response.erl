-module(openapi_put_scrub_ips_200_response).

-include("openapi.hrl").

-export([openapi_put_scrub_ips_200_response/0]).

-export([openapi_put_scrub_ips_200_response/1]).

-export_type([openapi_put_scrub_ips_200_response/0]).

-type openapi_put_scrub_ips_200_response() ::
  [ {'continue', boolean() }
  | {'errors', list(binary()) }
  | {'serviceType', integer() }
  | {'serviceCost', integer() }
  | {'originalCost', integer() }
  | {'repeatServiceCost', integer() }
  ].


openapi_put_scrub_ips_200_response() ->
    openapi_put_scrub_ips_200_response([]).

openapi_put_scrub_ips_200_response(Fields) ->
  Default = [ {'continue', boolean() }
            , {'errors', list(binary()) }
            , {'serviceType', integer() }
            , {'serviceCost', integer() }
            , {'originalCost', integer() }
            , {'repeatServiceCost', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

