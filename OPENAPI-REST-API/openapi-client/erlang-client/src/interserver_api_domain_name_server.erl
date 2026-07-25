-module(interserver_api_domain_name_server).

-export([encode/1]).

-export_type([interserver_api_domain_name_server/0]).

-type interserver_api_domain_name_server() ::
    #{ 'sortorder' => binary(),
       'name' => binary(),
       'ipaddress' => binary()
     }.

encode(#{ 'sortorder' := Sortorder,
          'name' := Name,
          'ipaddress' := Ipaddress
        }) ->
    #{ 'sortorder' => Sortorder,
       'name' => Name,
       'ipaddress' => Ipaddress
     }.
