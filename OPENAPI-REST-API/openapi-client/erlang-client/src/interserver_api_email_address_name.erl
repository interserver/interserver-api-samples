-module(interserver_api_email_address_name).

-export([encode/1]).

-export_type([interserver_api_email_address_name/0]).

-type interserver_api_email_address_name() ::
    #{ 'email' := binary(),
       'name' => binary()
     }.

encode(#{ 'email' := Email,
          'name' := Name
        }) ->
    #{ 'email' => Email,
       'name' => Name
     }.
