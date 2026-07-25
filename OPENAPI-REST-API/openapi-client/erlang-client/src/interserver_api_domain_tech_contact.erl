-module(interserver_api_domain_tech_contact).

-export([encode/1]).

-export_type([interserver_api_domain_tech_contact/0]).

-type interserver_api_domain_tech_contact() ::
    #{ 'state' => binary(),
       'status' => binary(),
       'org_name' => binary(),
       'country' => binary(),
       'postal_code' => binary(),
       'fax' => binary(),
       'email' => binary(),
       'address2' => binary(),
       'address3' => binary(),
       'address1' => binary(),
       'city' => binary(),
       'phone' => binary(),
       'first_name' => binary(),
       'last_name' => binary()
     }.

encode(#{ 'state' := State,
          'status' := Status,
          'org_name' := OrgName,
          'country' := Country,
          'postal_code' := PostalCode,
          'fax' := Fax,
          'email' := Email,
          'address2' := Address2,
          'address3' := Address3,
          'address1' := Address1,
          'city' := City,
          'phone' := Phone,
          'first_name' := FirstName,
          'last_name' := LastName
        }) ->
    #{ 'state' => State,
       'status' => Status,
       'org_name' => OrgName,
       'country' => Country,
       'postal_code' => PostalCode,
       'fax' => Fax,
       'email' => Email,
       'address2' => Address2,
       'address3' => Address3,
       'address1' => Address1,
       'city' => City,
       'phone' => Phone,
       'first_name' => FirstName,
       'last_name' => LastName
     }.
