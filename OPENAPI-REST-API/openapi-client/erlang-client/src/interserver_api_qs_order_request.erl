-module(interserver_api_qs_order_request).

-export([encode/1]).

-export_type([interserver_api_qs_order_request/0]).

-type interserver_api_qs_order_request() ::
    #{ 'server' := integer(),
       'password' := binary(),
       'os' => binary(),
       'tos' := boolean(),
       'comment' => binary()
     }.

encode(#{ 'server' := Server,
          'password' := Password,
          'os' := Os,
          'tos' := Tos,
          'comment' := Comment
        }) ->
    #{ 'server' => Server,
       'password' => Password,
       'os' => Os,
       'tos' => Tos,
       'comment' => Comment
     }.
