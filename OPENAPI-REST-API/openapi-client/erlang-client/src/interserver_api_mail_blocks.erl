-module(interserver_api_mail_blocks).

-export([encode/1]).

-export_type([interserver_api_mail_blocks/0]).

-type interserver_api_mail_blocks() ::
    #{ 'local' := list(),
       'mbtrap' := list(),
       'subject' := list()
     }.

encode(#{ 'local' := Local,
          'mbtrap' := Mbtrap,
          'subject' := Subject
        }) ->
    #{ 'local' => Local,
       'mbtrap' => Mbtrap,
       'subject' => Subject
     }.
