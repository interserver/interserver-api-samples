-module(interserver_api_ticket_new).

-export([encode/1]).

-export_type([interserver_api_ticket_new/0]).

-type interserver_api_ticket_new() ::
    #{ 'subject' := binary(),
       'body' := binary(),
       'service_id' => integer(),
       'service_module' => binary()
     }.

encode(#{ 'subject' := Subject,
          'body' := Body,
          'service_id' := ServiceId,
          'service_module' := ServiceModule
        }) ->
    #{ 'subject' => Subject,
       'body' => Body,
       'service_id' => ServiceId,
       'service_module' => ServiceModule
     }.
