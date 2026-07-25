-module(interserver_api_domain_all_info_attributes).

-export([encode/1]).

-export_type([interserver_api_domain_all_info_attributes/0]).

-type interserver_api_domain_all_info_attributes() ::
    #{ 'contact_set' => interserver_api_domain_all_info_attributes_contact_set:interserver_api_domain_all_info_attributes_contact_set(),
       'registry_createdate' => binary(),
       'registry_expiredate' => binary(),
       'tld_data' => binary(),
       'let_expire' => binary(),
       'auto_renew' => binary(),
       'sponsoring_rsp' => binary(),
       'gdpr_consent_status' => binary(),
       'nameserver_list' => list(),
       'registry_updatedate' => binary(),
       'affiliate_id' => binary(),
       'expiredate' => binary()
     }.

encode(#{ 'contact_set' := ContactSet,
          'registry_createdate' := RegistryCreatedate,
          'registry_expiredate' := RegistryExpiredate,
          'tld_data' := TldData,
          'let_expire' := LetExpire,
          'auto_renew' := AutoRenew,
          'sponsoring_rsp' := SponsoringRsp,
          'gdpr_consent_status' := GdprConsentStatus,
          'nameserver_list' := NameserverList,
          'registry_updatedate' := RegistryUpdatedate,
          'affiliate_id' := AffiliateId,
          'expiredate' := Expiredate
        }) ->
    #{ 'contact_set' => ContactSet,
       'registry_createdate' => RegistryCreatedate,
       'registry_expiredate' => RegistryExpiredate,
       'tld_data' => TldData,
       'let_expire' => LetExpire,
       'auto_renew' => AutoRenew,
       'sponsoring_rsp' => SponsoringRsp,
       'gdpr_consent_status' => GdprConsentStatus,
       'nameserver_list' => NameserverList,
       'registry_updatedate' => RegistryUpdatedate,
       'affiliate_id' => AffiliateId,
       'expiredate' => Expiredate
     }.
