-module(openapi_server_order_post_request).

-include("openapi.hrl").

-export([openapi_server_order_post_request/0]).

-export([openapi_server_order_post_request/1]).

-export_type([openapi_server_order_post_request/0]).

-type openapi_server_order_post_request() ::
  [ {'cpu', integer() }
  | {'hd', openapi_server_order_post_request_hd:openapi_server_order_post_request_hd() }
  | {'memory', integer() }
  | {'bandwidth', integer() }
  | {'ips', integer() }
  | {'os', integer() }
  | {'cp', integer() }
  | {'raid', integer() }
  | {'region', integer() }
  | {'servername', binary() }
  | {'rootpass', binary() }
  | {'tos', boolean() }
  | {'comment', binary() }
  ].


openapi_server_order_post_request() ->
    openapi_server_order_post_request([]).

openapi_server_order_post_request(Fields) ->
  Default = [ {'cpu', integer() }
            , {'hd', openapi_server_order_post_request_hd:openapi_server_order_post_request_hd() }
            , {'memory', integer() }
            , {'bandwidth', integer() }
            , {'ips', integer() }
            , {'os', integer() }
            , {'cp', integer() }
            , {'raid', integer() }
            , {'region', integer() }
            , {'servername', binary() }
            , {'rootpass', binary() }
            , {'tos', boolean() }
            , {'comment', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

