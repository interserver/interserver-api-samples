-module(openapi_website_order_post_request).

-include("openapi.hrl").

-export([openapi_website_order_post_request/0]).

-export([openapi_website_order_post_request/1]).

-export_type([openapi_website_order_post_request/0]).

-type openapi_website_order_post_request() ::
  [ {'hostname', binary() }
  | {'packageId', integer() }
  | {'rootpass', binary() }
  | {'period', integer() }
  | {'coupon', binary() }
  | {'serviceOfferId', integer() }
  | {'script', integer() }
  | {'comment', binary() }
  | {'registerDomain', boolean() }
  ].


openapi_website_order_post_request() ->
    openapi_website_order_post_request([]).

openapi_website_order_post_request(Fields) ->
  Default = [ {'hostname', binary() }
            , {'packageId', integer() }
            , {'rootpass', binary() }
            , {'period', integer() }
            , {'coupon', binary() }
            , {'serviceOfferId', integer() }
            , {'script', integer() }
            , {'comment', binary() }
            , {'registerDomain', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

