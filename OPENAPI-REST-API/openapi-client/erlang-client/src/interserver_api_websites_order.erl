-module(interserver_api_websites_order).

-export([encode/1]).

-export_type([interserver_api_websites_order/0]).

-type interserver_api_websites_order() ::
    #{ 'step' := binary(),
       'website' := binary(),
       'period' := integer(),
       'serviceOfferId' := integer(),
       'packages' := interserver_api_websites_order_packages:interserver_api_websites_order_packages(),
       'enableDomainRegistering' := boolean(),
       'jsonServices' := interserver_api_websites_order_json_services:interserver_api_websites_order_json_services(),
       'jsonServiceOffers' := interserver_api_websites_order_json_service_offers:interserver_api_websites_order_json_service_offers(),
       'serviceTypes' := interserver_api_websites_order_service_types:interserver_api_websites_order_service_types(),
       'serviceOffers' := interserver_api_websites_order_service_offers:interserver_api_websites_order_service_offers(),
       'packges' => interserver_api_websites_order_packges:interserver_api_websites_order_packges()
     }.

encode(#{ 'step' := Step,
          'website' := Website,
          'period' := Period,
          'serviceOfferId' := ServiceOfferId,
          'packages' := Packages,
          'enableDomainRegistering' := EnableDomainRegistering,
          'jsonServices' := JsonServices,
          'jsonServiceOffers' := JsonServiceOffers,
          'serviceTypes' := ServiceTypes,
          'serviceOffers' := ServiceOffers,
          'packges' := Packges
        }) ->
    #{ 'step' => Step,
       'website' => Website,
       'period' => Period,
       'serviceOfferId' => ServiceOfferId,
       'packages' => Packages,
       'enableDomainRegistering' => EnableDomainRegistering,
       'jsonServices' => JsonServices,
       'jsonServiceOffers' => JsonServiceOffers,
       'serviceTypes' => ServiceTypes,
       'serviceOffers' => ServiceOffers,
       'packges' => Packges
     }.
