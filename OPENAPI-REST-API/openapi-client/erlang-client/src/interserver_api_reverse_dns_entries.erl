-module(interserver_api_reverse_dns_entries).

-export([encode/1]).

-export_type([interserver_api_reverse_dns_entries/0]).

-type interserver_api_reverse_dns_entries() ::
    #{ 'ips' => maps:map()
     }.

encode(#{ 'ips' := Ips
        }) ->
    #{ 'ips' => Ips
     }.
