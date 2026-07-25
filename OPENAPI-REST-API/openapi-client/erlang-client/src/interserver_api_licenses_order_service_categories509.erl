-module(interserver_api_licenses_order_service_categories509).

-export([encode/1]).

-export_type([interserver_api_licenses_order_service_categories509/0]).

-type interserver_api_licenses_order_service_categories509() ::
    #{ 'category_id' => binary(),
       'category_name' => binary(),
       'category_tag' => binary(),
       'category_module' => binary()
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
