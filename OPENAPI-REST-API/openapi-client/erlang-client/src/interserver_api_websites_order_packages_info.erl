-module(interserver_api_websites_order_packages_info).

-export([encode/1]).

-export_type([interserver_api_websites_order_packages_info/0]).

-type interserver_api_websites_order_packages_info() ::
    #{ 'services_id' := binary(),
       'services_name' := binary(),
       'services_cost' := binary(),
       'services_category' := binary(),
       'services_buyable' := binary(),
       'services_type' := binary(),
       'services_module' := binary(),
       'services_description' := binary(),
       'services_field1' => binary(),
       'services_field2' => binary(),
       'services_html' => binary(),
       'services_moreinfo_url' => binary(),
       'services_hidden' => binary()
     }.

encode(#{ 'services_id' := ServicesId,
          'services_name' := ServicesName,
          'services_cost' := ServicesCost,
          'services_category' := ServicesCategory,
          'services_buyable' := ServicesBuyable,
          'services_type' := ServicesType,
          'services_module' := ServicesModule,
          'services_description' := ServicesDescription,
          'services_field1' := ServicesField1,
          'services_field2' := ServicesField2,
          'services_html' := ServicesHtml,
          'services_moreinfo_url' := ServicesMoreinfoUrl,
          'services_hidden' := ServicesHidden
        }) ->
    #{ 'services_id' => ServicesId,
       'services_name' => ServicesName,
       'services_cost' => ServicesCost,
       'services_category' => ServicesCategory,
       'services_buyable' => ServicesBuyable,
       'services_type' => ServicesType,
       'services_module' => ServicesModule,
       'services_description' => ServicesDescription,
       'services_field1' => ServicesField1,
       'services_field2' => ServicesField2,
       'services_html' => ServicesHtml,
       'services_moreinfo_url' => ServicesMoreinfoUrl,
       'services_hidden' => ServicesHidden
     }.
