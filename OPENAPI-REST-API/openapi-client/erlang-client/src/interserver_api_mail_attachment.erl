-module(interserver_api_mail_attachment).

-export([encode/1]).

-export_type([interserver_api_mail_attachment/0]).

-type interserver_api_mail_attachment() ::
    #{ 'filename' := binary(),
       'data' := binary()
     }.

encode(#{ 'filename' := Filename,
          'data' := Data
        }) ->
    #{ 'filename' => Filename,
       'data' => Data
     }.
