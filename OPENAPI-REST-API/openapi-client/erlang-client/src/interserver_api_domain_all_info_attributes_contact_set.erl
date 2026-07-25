-module(interserver_api_domain_all_info_attributes_contact_set).

-export([encode/1]).

-export_type([interserver_api_domain_all_info_attributes_contact_set/0]).

-type interserver_api_domain_all_info_attributes_contact_set() ::
    #{ 'owner' => interserver_api_domain_owner_contact:interserver_api_domain_owner_contact(),
       'admin' => interserver_api_domain_admin_contact:interserver_api_domain_admin_contact(),
       'tech' => interserver_api_domain_tech_contact:interserver_api_domain_tech_contact()
     }.

encode(#{ 'owner' := Owner,
          'admin' := Admin,
          'tech' := Tech
        }) ->
    #{ 'owner' => Owner,
       'admin' => Admin,
       'tech' => Tech
     }.
