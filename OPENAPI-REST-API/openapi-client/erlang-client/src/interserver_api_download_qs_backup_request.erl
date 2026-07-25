-module(interserver_api_download_qs_backup_request).

-export([encode/1]).

-export_type([interserver_api_download_qs_backup_request/0]).

-type interserver_api_download_qs_backup_request() ::
    #{ 'file' := binary()
     }.

encode(#{ 'file' := File
        }) ->
    #{ 'file' => File
     }.
