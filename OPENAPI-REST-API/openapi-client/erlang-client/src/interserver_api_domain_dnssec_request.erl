-module(interserver_api_domain_dnssec_request).

-export([encode/1]).

-export_type([interserver_api_domain_dnssec_request/0]).

-type interserver_api_domain_dnssec_request() ::
    #{ 'algorithm' => list(),
       'digest_type' => list(),
       'digest' => list(),
       'key_tag' => list()
     }.

encode(#{ 'algorithm' := Algorithm,
          'digest_type' := DigestType,
          'digest' := Digest,
          'key_tag' := KeyTag
        }) ->
    #{ 'algorithm' => Algorithm,
       'digest_type' => DigestType,
       'digest' => Digest,
       'key_tag' => KeyTag
     }.
