-module(interserver_api_domain_row).

-export([encode/1]).

-export_type([interserver_api_domain_row/0]).

-type interserver_api_domain_row() ::
    #{ 'domain_id' => binary(),
       'domain_hostname' => binary(),
       'domain_expire_date' => binary(),
       'cost' => binary(),
       'domain_status' => binary()
     }.

encode(#{ 'domain_id' := DomainId,
          'domain_hostname' := DomainHostname,
          'domain_expire_date' := DomainExpireDate,
          'cost' := Cost,
          'domain_status' := DomainStatus
        }) ->
    #{ 'domain_id' => DomainId,
       'domain_hostname' => DomainHostname,
       'domain_expire_date' => DomainExpireDate,
       'cost' => Cost,
       'domain_status' => DomainStatus
     }.
