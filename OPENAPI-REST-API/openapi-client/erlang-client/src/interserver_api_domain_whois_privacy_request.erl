-module(interserver_api_domain_whois_privacy_request).

-export([encode/1]).

-export_type([interserver_api_domain_whois_privacy_request/0]).

-type interserver_api_domain_whois_privacy_request() ::
    #{ 'func' => binary(),
       'csrf_token' => binary(),
       'domain_firstname' => binary(),
       'domain_lastname' => binary(),
       'domain_email' => binary(),
       'domain_address' => binary(),
       'domain_address2' => binary(),
       'domain_address3' => binary(),
       'domain_city' => binary(),
       'domain_state' => binary(),
       'domain_zip' => binary(),
       'domain_country' => binary(),
       'domain_phone' => binary(),
       'domain_fax' => binary(),
       'domain_company' => binary(),
       'domain_extra' => binary()
     }.

encode(#{ 'func' := Func,
          'csrf_token' := CsrfToken,
          'domain_firstname' := DomainFirstname,
          'domain_lastname' := DomainLastname,
          'domain_email' := DomainEmail,
          'domain_address' := DomainAddress,
          'domain_address2' := DomainAddress2,
          'domain_address3' := DomainAddress3,
          'domain_city' := DomainCity,
          'domain_state' := DomainState,
          'domain_zip' := DomainZip,
          'domain_country' := DomainCountry,
          'domain_phone' := DomainPhone,
          'domain_fax' := DomainFax,
          'domain_company' := DomainCompany,
          'domain_extra' := DomainExtra
        }) ->
    #{ 'func' => Func,
       'csrf_token' => CsrfToken,
       'domain_firstname' => DomainFirstname,
       'domain_lastname' => DomainLastname,
       'domain_email' => DomainEmail,
       'domain_address' => DomainAddress,
       'domain_address2' => DomainAddress2,
       'domain_address3' => DomainAddress3,
       'domain_city' => DomainCity,
       'domain_state' => DomainState,
       'domain_zip' => DomainZip,
       'domain_country' => DomainCountry,
       'domain_phone' => DomainPhone,
       'domain_fax' => DomainFax,
       'domain_company' => DomainCompany,
       'domain_extra' => DomainExtra
     }.
