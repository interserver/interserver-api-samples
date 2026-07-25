-module(interserver_api_backup_login_response).

-export([encode/1]).

-export_type([interserver_api_backup_login_response/0]).

-type interserver_api_backup_login_response() ::
    #{ 'success' => boolean(),
       'text' => binary()
     }.

encode(#{ 'success' := Success,
          'text' := Text
        }) ->
    #{ 'success' => Success,
       'text' => Text
     }.
