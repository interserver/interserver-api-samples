-module(interserver_api_quickserver_order_version).

-export([encode/1]).

-export_type([interserver_api_quickserver_order_version/0]).

-type interserver_api_quickserver_order_version() ::
    #{ 'centosstream_8' => interserver_api_quickserver_order_version_centosstream8:interserver_api_quickserver_order_version_centosstream8()
     }.

encode(#{ 'centosstream_8' := Centosstream8
        }) ->
    #{ 'centosstream-8' => Centosstream8
     }.
