-module(interserver_api_service_category).

-export([encode/1]).

-export_type([interserver_api_service_category/0]).

-type interserver_api_service_category() ::
    #{ 'category_id' := integer(),
       'category_name' := binary(),
       'category_tag' := binary(),
       'category_module' := binary()
     }.

encode(#{ 'category_id' := CategoryId,
          'category_name' := CategoryName,
          'category_tag' := CategoryTag,
          'category_module' := CategoryModule
        }) ->
    #{ 'category_id' => CategoryId,
       'category_name' => CategoryName,
       'category_tag' => CategoryTag,
       'category_module' => CategoryModule
     }.
