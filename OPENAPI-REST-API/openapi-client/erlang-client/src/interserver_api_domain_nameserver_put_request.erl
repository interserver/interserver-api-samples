-module(interserver_api_domain_nameserver_put_request).

-export([encode/1]).

-export_type([interserver_api_domain_nameserver_put_request/0]).

-type interserver_api_domain_nameserver_put_request() ::
    #{ 'nameserver' := list()
     }.

encode(#{ 'nameserver' := Nameserver
        }) ->
    #{ 'nameserver' => Nameserver
     }.
