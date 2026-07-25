-module(interserver_api_vps_order_templates_hyperv_windows).

-export([encode/1]).

-export_type([interserver_api_vps_order_templates_hyperv_windows/0]).

-type interserver_api_vps_order_templates_hyperv_windows() ::
    #{ 'Windows2019Standard' => binary(),
       'Windows2022' => binary()
     }.

encode(#{ 'Windows2019Standard' := Windows2019Standard,
          'Windows2022' := Windows2022
        }) ->
    #{ 'Windows2019Standard' => Windows2019Standard,
       'Windows2022' => Windows2022
     }.
