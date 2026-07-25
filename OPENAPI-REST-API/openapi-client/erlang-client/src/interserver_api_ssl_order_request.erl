-module(interserver_api_ssl_order_request).

-export([encode/1]).

-export_type([interserver_api_ssl_order_request/0]).

-type interserver_api_ssl_order_request() ::
    #{ 'ssl' := integer(),
       'hostname' := binary(),
       'approver_email' := binary(),
       'frequency' => integer(),
       'coupon' => binary(),
       'csr_type' => binary(),
       'csr' => binary(),
       'firstname' => binary(),
       'lastname' => binary(),
       'email' => binary(),
       'address' => binary(),
       'city' => binary(),
       'state' => binary(),
       'zip' => binary(),
       'country' => binary(),
       'phone' => binary(),
       'company' => binary(),
       'department' => binary(),
       'agency' => binary(),
       'business_category' => binary()
     }.

encode(#{ 'ssl' := Ssl,
          'hostname' := Hostname,
          'approver_email' := ApproverEmail,
          'frequency' := Frequency,
          'coupon' := Coupon,
          'csr_type' := CsrType,
          'csr' := Csr,
          'firstname' := Firstname,
          'lastname' := Lastname,
          'email' := Email,
          'address' := Address,
          'city' := City,
          'state' := State,
          'zip' := Zip,
          'country' := Country,
          'phone' := Phone,
          'company' := Company,
          'department' := Department,
          'agency' := Agency,
          'business_category' := BusinessCategory
        }) ->
    #{ 'ssl' => Ssl,
       'hostname' => Hostname,
       'approver_email' => ApproverEmail,
       'frequency' => Frequency,
       'coupon' => Coupon,
       'csr_type' => CsrType,
       'csr' => Csr,
       'firstname' => Firstname,
       'lastname' => Lastname,
       'email' => Email,
       'address' => Address,
       'city' => City,
       'state' => State,
       'zip' => Zip,
       'country' => Country,
       'phone' => Phone,
       'company' => Company,
       'department' => Department,
       'agency' => Agency,
       'business_category' => BusinessCategory
     }.
