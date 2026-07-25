-module(interserver_api_dns_record).

-export([encode/1]).

-export_type([interserver_api_dns_record/0]).

-type interserver_api_dns_record() ::
    #{ 'id' := binary(),
       'domain_id' := binary(),
       'name' := binary(),
       'type' := interserver_api_dns_record_type:interserver_api_dns_record_type(),
       'content' := binary(),
       'ttl' := binary(),
       'prio' := binary(),
       'disabled' := binary(),
       'ordername' := binary(),
       'auth' := binary()
     }.

encode(#{ 'id' := Id,
          'domain_id' := DomainId,
          'name' := Name,
          'type' := Type,
          'content' := Content,
          'ttl' := Ttl,
          'prio' := Prio,
          'disabled' := Disabled,
          'ordername' := Ordername,
          'auth' := Auth
        }) ->
    #{ 'id' => Id,
       'domain_id' => DomainId,
       'name' => Name,
       'type' => Type,
       'content' => Content,
       'ttl' => Ttl,
       'prio' => Prio,
       'disabled' => Disabled,
       'ordername' => Ordername,
       'auth' => Auth
     }.
