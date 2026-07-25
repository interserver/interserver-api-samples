-module(interserver_api_mail_delist_response).

-export([encode/1]).

-export_type([interserver_api_mail_delist_response/0]).

-type interserver_api_mail_delist_response() ::
    #{ 'id' => integer(),
       'local' => list(),
       'mbtrap' => list(),
       'subject' => list(),
       'manual' => list()
     }.

encode(#{ 'id' := Id,
          'local' := Local,
          'mbtrap' := Mbtrap,
          'subject' := Subject,
          'manual' := Manual
        }) ->
    #{ 'id' => Id,
       'local' => Local,
       'mbtrap' => Mbtrap,
       'subject' => Subject,
       'manual' => Manual
     }.
