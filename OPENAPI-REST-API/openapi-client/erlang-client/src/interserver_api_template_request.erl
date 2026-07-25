-module(interserver_api_template_request).

-export([encode/1]).

-export_type([interserver_api_template_request/0]).

-type interserver_api_template_request() ::
    #{ 'template' := binary(),
       'localPassword' := binary(),
       'password' => binary()
     }.

encode(#{ 'template' := Template,
          'localPassword' := LocalPassword,
          'password' := Password
        }) ->
    #{ 'template' => Template,
       'localPassword' => LocalPassword,
       'password' => Password
     }.
