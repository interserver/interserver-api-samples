-module(interserver_api_put_scrub_ips_200_response).

-export([encode/1]).

-export_type([interserver_api_put_scrub_ips_200_response/0]).

-type interserver_api_put_scrub_ips_200_response() ::
    #{ 'continue' => boolean(),
       'errors' => list(),
       'serviceType' => integer(),
       'serviceCost' => integer(),
       'originalCost' => integer(),
       'repeatServiceCost' => integer()
     }.

encode(#{ 'continue' := Continue,
          'errors' := Errors,
          'serviceType' := ServiceType,
          'serviceCost' := ServiceCost,
          'originalCost' := OriginalCost,
          'repeatServiceCost' := RepeatServiceCost
        }) ->
    #{ 'continue' => Continue,
       'errors' => Errors,
       'serviceType' => ServiceType,
       'serviceCost' => ServiceCost,
       'originalCost' => OriginalCost,
       'repeatServiceCost' => RepeatServiceCost
     }.
