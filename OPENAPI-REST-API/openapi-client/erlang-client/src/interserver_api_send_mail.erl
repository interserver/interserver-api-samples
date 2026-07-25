-module(interserver_api_send_mail).

-export([encode/1]).

-export_type([interserver_api_send_mail/0]).

-type interserver_api_send_mail() ::
    #{ 'to' := binary(),
       'from' := binary(),
       'subject' := binary(),
       'body' := binary()
     }.

encode(#{ 'to' := To,
          'from' := From,
          'subject' := Subject,
          'body' := Body
        }) ->
    #{ 'to' => To,
       'from' => From,
       'subject' => Subject,
       'body' => Body
     }.
