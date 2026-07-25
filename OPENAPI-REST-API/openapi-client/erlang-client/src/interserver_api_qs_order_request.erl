-module(interserver_api_qs_order_request).

-export([encode/1]).

-export_type([interserver_api_qs_order_request/0]).

-type interserver_api_qs_order_request() ::
    #{ 'server' := integer(),
       'password' := binary(),
       'tos' := boolean(),
       'os' => binary(),
       'comment' => binary()
     }.

encode(#{ 'server' := Server,
          'password' := Password,
          'tos' := Tos,
          'os' := Os,
          'comment' := Comment
        }) ->
    #{ 'server' => Server,
       'password' => Password,
       'tos' => Tos,
       'os' => Os,
       'comment' => Comment
     }.
