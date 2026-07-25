-module(interserver_api_restore_request).

-export([encode/1]).

-export_type([interserver_api_restore_request/0]).

-type interserver_api_restore_request() ::
    #{ 'backup' => binary(),
       'password' => binary()
     }.

encode(#{ 'backup' := Backup,
          'password' := Password
        }) ->
    #{ 'backup' => Backup,
       'password' => Password
     }.
