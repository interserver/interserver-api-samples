-module(interserver_api_post_website_migration_200_response).

-export([encode/1]).

-export_type([interserver_api_post_website_migration_200_response/0]).

-type interserver_api_post_website_migration_200_response() ::
    #{ 'text' => binary(),
       'ticket' => integer()
     }.

encode(#{ 'text' := Text,
          'ticket' := Ticket
        }) ->
    #{ 'text' => Text,
       'ticket' => Ticket
     }.
