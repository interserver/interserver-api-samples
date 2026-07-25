-module(openapi_mail_order_request).

-include("openapi.hrl").

-export([openapi_mail_order_request/0]).

-export([openapi_mail_order_request/1]).

-export_type([openapi_mail_order_request/0]).

-type openapi_mail_order_request() ::
  [ {'serviceType', integer() }
  | {'coupon', binary() }
  | {'comment', binary() }
  ].


openapi_mail_order_request() ->
    openapi_mail_order_request([]).

openapi_mail_order_request(Fields) ->
  Default = [ {'serviceType', integer() }
            , {'coupon', binary() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

