-module(openapi_qs_order_request).

-include("openapi.hrl").

-export([openapi_qs_order_request/0]).

-export([openapi_qs_order_request/1]).

-export_type([openapi_qs_order_request/0]).

-type openapi_qs_order_request() ::
  [ {'server', integer() }
  | {'password', binary() }
  | {'tos', boolean() }
  | {'os', binary() }
  | {'comment', binary() }
  ].


openapi_qs_order_request() ->
    openapi_qs_order_request([]).

openapi_qs_order_request(Fields) ->
  Default = [ {'server', integer() }
            , {'password', binary() }
            , {'tos', boolean() }
            , {'os', binary() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

