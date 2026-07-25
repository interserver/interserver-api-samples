-module(openapi_ssl_order_request).

-include("openapi.hrl").

-export([openapi_ssl_order_request/0]).

-export([openapi_ssl_order_request/1]).

-export_type([openapi_ssl_order_request/0]).

-type openapi_ssl_order_request() ::
  [ {'ssl', integer() }
  | {'hostname', binary() }
  | {'approver_email', binary() }
  | {'frequency', integer() }
  | {'coupon', binary() }
  | {'csr_type', binary() }
  | {'csr', binary() }
  | {'firstname', binary() }
  | {'lastname', binary() }
  | {'email', binary() }
  | {'address', binary() }
  | {'city', binary() }
  | {'state', binary() }
  | {'zip', binary() }
  | {'country', binary() }
  | {'phone', binary() }
  | {'company', binary() }
  | {'department', binary() }
  | {'agency', binary() }
  | {'business_category', binary() }
  ].


openapi_ssl_order_request() ->
    openapi_ssl_order_request([]).

openapi_ssl_order_request(Fields) ->
  Default = [ {'ssl', integer() }
            , {'hostname', binary() }
            , {'approver_email', binary() }
            , {'frequency', integer() }
            , {'coupon', binary() }
            , {'csr_type', elements([<<"generated">>, <<"provided">>]) }
            , {'csr', binary() }
            , {'firstname', binary() }
            , {'lastname', binary() }
            , {'email', binary() }
            , {'address', binary() }
            , {'city', binary() }
            , {'state', binary() }
            , {'zip', binary() }
            , {'country', binary() }
            , {'phone', binary() }
            , {'company', binary() }
            , {'department', binary() }
            , {'agency', binary() }
            , {'business_category', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

