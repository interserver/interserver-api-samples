-module(interserver_api_post_website_buy_ip_request).

-export([encode/1]).

-export_type([interserver_api_post_website_buy_ip_request/0]).

-type interserver_api_post_website_buy_ip_request() ::
    #{ 'ips' => maps:map()
     }.

encode(#{ 'ips' := Ips
        }) ->
    #{ 'ips' => Ips
     }.
