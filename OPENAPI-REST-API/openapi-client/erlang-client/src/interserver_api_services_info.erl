-module(interserver_api_services_info).

-export([encode/1]).

-export_type([interserver_api_services_info/0]).

-type interserver_api_services_info() ::
    #{ 'modules' := interserver_api_modules:interserver_api_modules(),
       'services' := interserver_api_services:interserver_api_services(),
       'serviceTypes' := interserver_api_service_types:interserver_api_service_types(),
       'serviceCategories' := interserver_api_service_categories:interserver_api_service_categories()
     }.

encode(#{ 'modules' := Modules,
          'services' := Services,
          'serviceTypes' := ServiceTypes,
          'serviceCategories' := ServiceCategories
        }) ->
    #{ 'modules' => Modules,
       'services' => Services,
       'serviceTypes' => ServiceTypes,
       'serviceCategories' => ServiceCategories
     }.
