-module(interserver_api_website_backups_inner).

-export([encode/1]).

-export_type([interserver_api_website_backups_inner/0]).

-type interserver_api_website_backups_inner() ::
    #{ 'name' := binary(),
       'size' => integer()
     }.

encode(#{ 'name' := Name,
          'size' := Size
        }) ->
    #{ 'name' => Name,
       'size' => Size
     }.
