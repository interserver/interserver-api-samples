-module(interserver_api_domain_order_services).

-export([encode/1]).

-export_type([interserver_api_domain_order_services/0]).

-type interserver_api_domain_order_services() ::
    #{ 'DomainOrderServices10001' => interserver_api_domain_order_services10001:interserver_api_domain_order_services10001()
     }.

encode(#{ 'DomainOrderServices10001' := DomainOrderServices10001
        }) ->
    #{ 'DomainOrderServices10001' => DomainOrderServices10001
     }.
