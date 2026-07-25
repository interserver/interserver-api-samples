-module(interserver_api_service).

-export([encode/1]).

-export_type([interserver_api_service/0]).

-type interserver_api_service() ::
    #{ 'services_id' := integer(),
       'services_name' := binary(),
       'services_cost' := integer(),
       'services_currency' := binary(),
       'services_category' := integer(),
       'services_buyable' := boolean(),
       'services_type' := integer(),
       'services_field1' := binary(),
       'services_field2' := binary(),
       'services_module' := binary()
     }.

encode(#{ 'services_id' := ServicesId,
          'services_name' := ServicesName,
          'services_cost' := ServicesCost,
          'services_currency' := ServicesCurrency,
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
       'services_currency' => ServicesCurrency,
       'services_category' => ServicesCategory,
       'services_buyable' => ServicesBuyable,
       'services_type' => ServicesType,
       'services_field1' => ServicesField1,
       'services_field2' => ServicesField2,
       'services_module' => ServicesModule
     }.
