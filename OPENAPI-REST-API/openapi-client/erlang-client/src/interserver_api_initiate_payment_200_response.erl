-module(interserver_api_initiate_payment_200_response).

-export([encode/1]).

-export_type([interserver_api_initiate_payment_200_response/0]).

-type interserver_api_initiate_payment_200_response() ::
    #{ 'type' => binary(),
       'redirect' => binary(),
       'action' => binary(),
       'method' => binary(),
       'items' => maps:map(),
       'text' => binary()
     }.

encode(#{ 'type' := Type,
          'redirect' := Redirect,
          'action' := Action,
          'method' := Method,
          'items' := Items,
          'text' := Text
        }) ->
    #{ 'type' => Type,
       'redirect' => Redirect,
       'action' => Action,
       'method' => Method,
       'items' => Items,
       'text' => Text
     }.
