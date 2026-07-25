-module(interserver_api_quickserver_order_version_centosstream8).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_version_centosstream8/0]).

-type interserver_api_quickserver_order_version_centosstream8() ::
    #{ 'centosstream_8' => binary()
     }.

encode(#{ 'centosstream_8' := Centosstream8
        }) ->
    #{ 'centosstream-8' => Centosstream8
     }.
