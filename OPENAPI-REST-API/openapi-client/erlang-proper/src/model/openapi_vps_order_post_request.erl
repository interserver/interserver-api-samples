-module(openapi_vps_order_post_request).

-include("openapi.hrl").

-export([openapi_vps_order_post_request/0]).

-export([openapi_vps_order_post_request/1]).

-export_type([openapi_vps_order_post_request/0]).

-type openapi_vps_order_post_request() ::
  [ {'osDistro', binary() }
  | {'slices', integer() }
  | {'vpsPlatform', binary() }
  | {'period', integer() }
  | {'location', integer() }
  | {'osVersion', binary() }
  | {'hostname', binary() }
  | {'rootpass', binary() }
  | {'controlpanel', binary() }
  | {'coupon', binary() }
  | {'comment', binary() }
  ].


openapi_vps_order_post_request() ->
    openapi_vps_order_post_request([]).

openapi_vps_order_post_request(Fields) ->
  Default = [ {'osDistro', binary() }
            , {'slices', integer(1, 32) }
            , {'vpsPlatform', elements([<<"kvm">>, <<"hyperv">>, <<"kvmstorage">>]) }
            , {'period', integer(1, 12) }
            , {'location', integer(1, 3) }
            , {'osVersion', binary() }
            , {'hostname', binary() }
            , {'rootpass', binary() }
            , {'controlpanel', elements([<<"none">>, <<"cpanel">>, <<"da">>]) }
            , {'coupon', binary() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

