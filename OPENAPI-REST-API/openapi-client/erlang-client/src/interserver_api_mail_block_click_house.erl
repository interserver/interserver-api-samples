-module(interserver_api_mail_block_click_house).

-export([encode/1]).

-export_type([interserver_api_mail_block_click_house/0]).

-type interserver_api_mail_block_click_house() ::
    #{ 'date' := calendar:date(),
       'from' := binary(),
       'messageId' := binary(),
       'subject' := binary(),
       'to' := binary()
     }.

encode(#{ 'date' := Date,
          'from' := From,
          'messageId' := MessageId,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'date' => Date,
       'from' => From,
       'messageId' => MessageId,
       'subject' => Subject,
       'to' => To
     }.
