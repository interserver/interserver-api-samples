-module(interserver_api_get_order_detail_200_response_service_types_inner).

-export([encode/1]).

-export_type([interserver_api_get_order_detail_200_response_service_types_inner/0]).

-type interserver_api_get_order_detail_200_response_service_types_inner() ::
    #{ 'services_id' => integer(),
       'services_name' => binary(),
       'services_cost' => integer(),
       'services_field1' => binary(),
       'services_field2' => binary(),
       'services_module' => binary()
     }.

encode(#{ 'services_id' := ServicesId,
          'services_name' := ServicesName,
          'services_cost' := ServicesCost,
          'services_field1' := ServicesField1,
          'services_field2' := ServicesField2,
          'services_module' := ServicesModule
        }) ->
    #{ 'services_id' => ServicesId,
       'services_name' => ServicesName,
       'services_cost' => ServicesCost,
       'services_field1' => ServicesField1,
       'services_field2' => ServicesField2,
       'services_module' => ServicesModule
     }.
