-module(interserver_api_domain_dnssec_records_inner).

-export([encode/1]).

-export_type([interserver_api_domain_dnssec_records_inner/0]).

-type interserver_api_domain_dnssec_records_inner() ::
    #{ 'algorithm' => binary(),
       'digest_type' => binary(),
       'digest' => binary(),
       'key_tag' => binary()
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
