-module(interserver_api_domain_billing_extra).

-export([encode/1]).

-export_type([interserver_api_domain_billing_extra/0]).

-type interserver_api_domain_billing_extra() ::
    #{ 'order' => interserver_api_domain_order_response:interserver_api_domain_order_response(),
       'order_id' => binary(),
       'domain_id' => binary(),
       'provProcessPending' => interserver_api_domain_prov_process_pending:interserver_api_domain_prov_process_pending(),
       'email' => binary(),
       'firstname' => binary(),
       'lastname' => binary(),
       'company' => binary(),
       'address' => binary(),
       'address2' => binary(),
       'address3' => binary(),
       'city' => binary(),
       'state' => binary(),
       'zip' => binary(),
       'country' => binary(),
       'phone' => binary(),
       'fax' => binary()
     }.

encode(#{ 'order' := Order,
          'order_id' := OrderId,
          'domain_id' := DomainId,
          'provProcessPending' := ProvProcessPending,
          'email' := Email,
          'firstname' := Firstname,
          'lastname' := Lastname,
          'company' := Company,
          'address' := Address,
          'address2' := Address2,
          'address3' := Address3,
          'city' := City,
          'state' := State,
          'zip' := Zip,
          'country' := Country,
          'phone' := Phone,
          'fax' := Fax
        }) ->
    #{ 'order' => Order,
       'order_id' => OrderId,
       'domain_id' => DomainId,
       'provProcessPending' => ProvProcessPending,
       'email' => Email,
       'firstname' => Firstname,
       'lastname' => Lastname,
       'company' => Company,
       'address' => Address,
       'address2' => Address2,
       'address3' => Address3,
       'city' => City,
       'state' => State,
       'zip' => Zip,
       'country' => Country,
       'phone' => Phone,
       'fax' => Fax
     }.
