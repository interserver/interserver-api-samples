-module(interserver_api_vps_da_license).

-export([encode/1]).

-export_type([interserver_api_vps_da_license/0]).

-type interserver_api_vps_da_license() ::
    #{ 'name' => binary(),
       'sub_name' => binary(),
       'cost' => integer(),
       'img_disabled' => binary(),
       'img_active' => binary()
     }.

encode(#{ 'name' := Name,
          'sub_name' := SubName,
          'cost' := Cost,
          'img_disabled' := ImgDisabled,
          'img_active' := ImgActive
        }) ->
    #{ 'name' => Name,
       'sub_name' => SubName,
       'cost' => Cost,
       'img_disabled' => ImgDisabled,
       'img_active' => ImgActive
     }.
