-module(interserver_api_add_server_200_response).

-export([encode/1]).

-export_type([interserver_api_add_server_200_response/0]).

-type interserver_api_add_server_200_response() ::
    #{ 'text' => binary(),
       'invoice' => integer(),
       'order' => integer()
     }.

encode(#{ 'text' := Text,
          'invoice' := Invoice,
          'order' := Order
        }) ->
    #{ 'text' => Text,
       'invoice' => Invoice,
       'order' => Order
     }.
