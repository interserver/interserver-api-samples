-module(interserver_api_domain_admin_contact).

-export([encode/1]).

-export_type([interserver_api_domain_admin_contact/0]).

-type interserver_api_domain_admin_contact() ::
    #{ 'status' => binary(),
       'state' => binary(),
       'org_name' => binary(),
       'country' => binary(),
       'postal_code' => binary(),
       'email' => binary(),
       'fax' => binary(),
       'address2' => binary(),
       'address3' => binary(),
       'address1' => binary(),
       'city' => binary(),
       'phone' => binary(),
       'first_name' => binary(),
       'last_name' => binary()
     }.

encode(#{ 'status' := Status,
          'state' := State,
          'org_name' := OrgName,
          'country' := Country,
          'postal_code' := PostalCode,
          'email' := Email,
          'fax' := Fax,
          'address2' := Address2,
          'address3' := Address3,
          'address1' := Address1,
          'city' := City,
          'phone' := Phone,
          'first_name' := FirstName,
          'last_name' := LastName
        }) ->
    #{ 'status' => Status,
       'state' => State,
       'org_name' => OrgName,
       'country' => Country,
       'postal_code' => PostalCode,
       'email' => Email,
       'fax' => Fax,
       'address2' => Address2,
       'address3' => Address3,
       'address1' => Address1,
       'city' => City,
       'phone' => Phone,
       'first_name' => FirstName,
       'last_name' => LastName
     }.
