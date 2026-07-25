-module(interserver_api_domain_owner_contact).

-export([encode/1]).

-export_type([interserver_api_domain_owner_contact/0]).

-type interserver_api_domain_owner_contact() ::
    #{ 'postal_code' => binary(),
       'org_name' => binary(),
       'country' => binary(),
       'status' => binary(),
       'state' => binary(),
       'first_name' => binary(),
       'last_name' => binary(),
       'address3' => binary(),
       'fax' => binary(),
       'address2' => binary(),
       'email' => binary(),
       'city' => binary(),
       'phone' => binary(),
       'address1' => binary()
     }.

encode(#{ 'postal_code' := PostalCode,
          'org_name' := OrgName,
          'country' := Country,
          'status' := Status,
          'state' := State,
          'first_name' := FirstName,
          'last_name' := LastName,
          'address3' := Address3,
          'fax' := Fax,
          'address2' := Address2,
          'email' := Email,
          'city' := City,
          'phone' := Phone,
          'address1' := Address1
        }) ->
    #{ 'postal_code' => PostalCode,
       'org_name' => OrgName,
       'country' => Country,
       'status' => Status,
       'state' => State,
       'first_name' => FirstName,
       'last_name' => LastName,
       'address3' => Address3,
       'fax' => Fax,
       'address2' => Address2,
       'email' => Email,
       'city' => City,
       'phone' => Phone,
       'address1' => Address1
     }.
