-module(interserver_api_get_account_locales_200_response_value).

-export([encode/1]).

-export_type([interserver_api_get_account_locales_200_response_value/0]).

-type interserver_api_get_account_locales_200_response_value() ::
    #{ 'name' => binary(),
       'local_name' => binary()
     }.

encode(#{ 'name' := Name,
          'local_name' := LocalName
        }) ->
    #{ 'name' => Name,
       'local_name' => LocalName
     }.
