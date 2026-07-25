-module(interserver_api_dns_new_domain).

-export([encode/1]).

-export_type([interserver_api_dns_new_domain/0]).

-type interserver_api_dns_new_domain() ::
    #{ 'domain' := binary(),
       'ip' := binary()
     }.

encode(#{ 'domain' := Domain,
          'ip' := Ip
        }) ->
    #{ 'domain' => Domain,
       'ip' => Ip
     }.
