-module(interserver_api_reply_ticket_response_schema).

-export([encode/1]).

-export_type([interserver_api_reply_ticket_response_schema/0]).

-type interserver_api_reply_ticket_response_schema() ::
    #{ 'success' => boolean(),
       'post_id' => integer()
     }.

encode(#{ 'success' := Success,
          'post_id' := PostId
        }) ->
    #{ 'success' => Success,
       'post_id' => PostId
     }.
