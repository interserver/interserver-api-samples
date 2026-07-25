-module(interserver_api_domain_nameserver_post_request).

-export([encode/1]).

-export_type([interserver_api_domain_nameserver_post_request/0]).

-type interserver_api_domain_nameserver_post_request() ::
    #{ 'name' := binary(),
       'ipAddress' := binary()
     }.

encode(#{ 'name' := Name,
          'ipAddress' := IpAddress
        }) ->
    #{ 'name' => Name,
       'ipAddress' => IpAddress
     }.
