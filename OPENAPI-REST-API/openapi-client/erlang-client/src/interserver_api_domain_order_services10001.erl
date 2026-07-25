-module(interserver_api_domain_order_services10001).

-export([encode/1]).

-export_type([interserver_api_domain_order_services10001/0]).

-type interserver_api_domain_order_services10001() ::
    #{ 'services_id' => binary(),
       'services_name' => binary(),
       'services_cost' => binary(),
       'services_currency' => binary(),
       'services_category' => binary(),
       'services_buyable' => binary(),
       'services_type' => binary(),
       'services_field1' => binary(),
       'services_field2' => binary(),
       'services_module' => binary(),
       'services_hidden' => binary()
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
          'services_module' := ServicesModule,
          'services_hidden' := ServicesHidden
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
       'services_module' => ServicesModule,
       'services_hidden' => ServicesHidden
     }.
