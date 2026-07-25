-module(openapi_server_order_post_request_hd).

-include("openapi.hrl").

-export([openapi_server_order_post_request_hd/0]).

-export([openapi_server_order_post_request_hd/1]).

-export_type([openapi_server_order_post_request_hd/0]).

-type openapi_server_order_post_request_hd() ::
  [ 
  ].


openapi_server_order_post_request_hd() ->
    openapi_server_order_post_request_hd([]).

openapi_server_order_post_request_hd(Fields) ->
  Default = [ 
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

