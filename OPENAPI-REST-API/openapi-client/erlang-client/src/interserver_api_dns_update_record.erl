-module(interserver_api_dns_update_record).

-export([encode/1]).

-export_type([interserver_api_dns_update_record/0]).

-type interserver_api_dns_update_record() ::
    #{ 'name' => binary(),
       'type' => interserver_api_dns_record_type:interserver_api_dns_record_type(),
       'content' => binary(),
       'ttl' => binary(),
       'prio' => binary(),
       'disabled' => binary(),
       'ordername' => binary(),
       'auth' => binary()
     }.

encode(#{ 'name' := Name,
          'type' := Type,
          'content' := Content,
          'ttl' := Ttl,
          'prio' := Prio,
          'disabled' := Disabled,
          'ordername' := Ordername,
          'auth' := Auth
        }) ->
    #{ 'name' => Name,
       'type' => Type,
       'content' => Content,
       'ttl' => Ttl,
       'prio' => Prio,
       'disabled' => Disabled,
       'ordername' => Ordername,
       'auth' => Auth
     }.
