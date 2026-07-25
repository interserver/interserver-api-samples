-module(interserver_api_server_order_control_panel).

-export([encode/1]).

-export_type([interserver_api_server_order_control_panel/0]).

-type interserver_api_server_order_control_panel() ::
    #{ 'id' => binary(),
       'price' => integer(),
       'img' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'os_type' => binary(),
       'monthly_price' => integer(),
       'types' => list(),
       'price_display' => binary(),
       'monthly_price_display' => binary()
     }.

encode(#{ 'id' := Id,
          'price' := Price,
          'img' := Img,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'os_type' := OsType,
          'monthly_price' := MonthlyPrice,
          'types' := Types,
          'price_display' := PriceDisplay,
          'monthly_price_display' := MonthlyPriceDisplay
        }) ->
    #{ 'id' => Id,
       'price' => Price,
       'img' => Img,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'os_type' => OsType,
       'monthly_price' => MonthlyPrice,
       'types' => Types,
       'price_display' => PriceDisplay,
       'monthly_price_display' => MonthlyPriceDisplay
     }.
