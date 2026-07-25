-module(interserver_api_server_order_field_label).

-export([encode/1]).

-export_type([interserver_api_server_order_field_label/0]).

-type interserver_api_server_order_field_label() ::
    #{ 'name' => binary(),
       'active' => integer()
     }.

encode(#{ 'name' := Name,
          'active' := Active
        }) ->
    #{ 'name' => Name,
       'active' => Active
     }.
