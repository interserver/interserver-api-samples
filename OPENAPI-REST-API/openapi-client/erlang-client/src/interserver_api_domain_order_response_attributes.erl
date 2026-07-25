-module(interserver_api_domain_order_response_attributes).

-export([encode/1]).

-export_type([interserver_api_domain_order_response_attributes/0]).

-type interserver_api_domain_order_response_attributes() ::
    #{ 'id' => binary(),
       'admin_email' => binary()
     }.

encode(#{ 'id' := Id,
          'admin_email' := AdminEmail
        }) ->
    #{ 'id' => Id,
       'admin_email' => AdminEmail
     }.
