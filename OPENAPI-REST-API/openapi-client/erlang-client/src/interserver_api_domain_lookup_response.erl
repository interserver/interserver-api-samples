-module(interserver_api_domain_lookup_response).

-export([encode/1]).

-export_type([interserver_api_domain_lookup_response/0]).

-type interserver_api_domain_lookup_response() ::
    #{ 'available' => boolean(),
       'premium' => boolean(),
       'website' => boolean(),
       'domain_service' => boolean(),
       'service' => maps:map(),
       'whois_privacy' => boolean(),
       'new' => binary(),
       'renewal' => binary(),
       'transfer' => binary(),
       'fields' => maps:map(),
       'currencies' => maps:map()
     }.

encode(#{ 'available' := Available,
          'premium' := Premium,
          'website' := Website,
          'domain_service' := DomainService,
          'service' := Service,
          'whois_privacy' := WhoisPrivacy,
          'new' := New,
          'renewal' := Renewal,
          'transfer' := Transfer,
          'fields' := Fields,
          'currencies' := Currencies
        }) ->
    #{ 'available' => Available,
       'premium' => Premium,
       'website' => Website,
       'domain_service' => DomainService,
       'service' => Service,
       'whois_privacy' => WhoisPrivacy,
       'new' => New,
       'renewal' => Renewal,
       'transfer' => Transfer,
       'fields' => Fields,
       'currencies' => Currencies
     }.
