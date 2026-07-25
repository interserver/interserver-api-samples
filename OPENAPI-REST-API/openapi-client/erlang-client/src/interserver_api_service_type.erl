-module(interserver_api_service_type).

-export([encode/1]).

-export_type([interserver_api_service_type/0]).

-type interserver_api_service_type() ::
    #{ 'st_id' := integer(),
       'st_name' := binary(),
       'st_category' := integer(),
       'st_module' := binary()
     }.

encode(#{ 'st_id' := StId,
          'st_name' := StName,
          'st_category' := StCategory,
          'st_module' := StModule
        }) ->
    #{ 'st_id' => StId,
       'st_name' => StName,
       'st_category' => StCategory,
       'st_module' => StModule
     }.
