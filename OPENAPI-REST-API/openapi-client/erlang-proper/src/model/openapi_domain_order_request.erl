-module(openapi_domain_order_request).

-include("openapi.hrl").

-export([openapi_domain_order_request/0]).

-export([openapi_domain_order_request/1]).

-export_type([openapi_domain_order_request/0]).

-type openapi_domain_order_request() ::
  [ {'hostname', binary() }
  | {'type', binary() }
  | {'coupon', binary() }
  | {'whois_privacy', binary() }
  ].


openapi_domain_order_request() ->
    openapi_domain_order_request([]).

openapi_domain_order_request(Fields) ->
  Default = [ {'hostname', binary() }
            , {'type', elements([<<"register">>, <<"transfer">>]) }
            , {'coupon', binary() }
            , {'whois_privacy', elements([<<"enable">>, <<"disable">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

