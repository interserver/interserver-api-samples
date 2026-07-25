-module(openapi_license_order_request).

-include("openapi.hrl").

-export([openapi_license_order_request/0]).

-export([openapi_license_order_request/1]).

-export_type([openapi_license_order_request/0]).

-type openapi_license_order_request() ::
  [ {'package', integer() }
  | {'ip', binary() }
  | {'tos', boolean() }
  | {'frequency', integer() }
  | {'coupon', binary() }
  | {'comment', binary() }
  ].


openapi_license_order_request() ->
    openapi_license_order_request([]).

openapi_license_order_request(Fields) ->
  Default = [ {'package', integer() }
            , {'ip', binary() }
            , {'tos', boolean() }
            , {'frequency', integer() }
            , {'coupon', binary() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

