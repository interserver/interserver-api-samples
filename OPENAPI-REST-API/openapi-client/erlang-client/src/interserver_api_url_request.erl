-module(interserver_api_url_request).

-export([encode/1]).

-export_type([interserver_api_url_request/0]).

-type interserver_api_url_request() ::
    #{ 'url' => binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
