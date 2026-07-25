-module(interserver_api_vps_order_service_types_32).

-export([encode/1]).

-export_type([interserver_api_vps_order_service_types_32/0]).

-type interserver_api_vps_order_service_types_32() ::
    #{ 'services_id' => binary(),
       'services_name' => binary(),
       'services_cost' => binary(),
       'services_category' => binary(),
       'services_buyable' => binary(),
       'services_type' => binary(),
       'services_field1' => binary(),
       'services_field2' => binary(),
       'services_module' => binary()
     }.

encode(#{ 'services_id' := ServicesId,
          'services_name' := ServicesName,
          'services_cost' := ServicesCost,
          'services_category' := ServicesCategory,
          'services_buyable' := ServicesBuyable,
          'services_type' := ServicesType,
          'services_field1' := ServicesField1,
          'services_field2' := ServicesField2,
          'services_module' := ServicesModule
        }) ->
    #{ 'services_id' => ServicesId,
       'services_name' => ServicesName,
       'services_cost' => ServicesCost,
       'services_category' => ServicesCategory,
       'services_buyable' => ServicesBuyable,
       'services_type' => ServicesType,
       'services_field1' => ServicesField1,
       'services_field2' => ServicesField2,
       'services_module' => ServicesModule
     }.
