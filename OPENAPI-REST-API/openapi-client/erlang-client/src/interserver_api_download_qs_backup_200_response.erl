-module(interserver_api_download_qs_backup_200_response).

-export([encode/1]).

-export_type([interserver_api_download_qs_backup_200_response/0]).

-type interserver_api_download_qs_backup_200_response() ::
    #{ 'text' => binary(),
       'url' => binary()
     }.

encode(#{ 'text' := Text,
          'url' := Url
        }) ->
    #{ 'text' => Text,
       'url' => Url
     }.
