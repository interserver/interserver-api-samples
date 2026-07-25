-module(interserver_api_server_order_os).

-export([encode/1]).

-export_type([interserver_api_server_order_os/0]).

-type interserver_api_server_order_os() ::
    #{ 'id' => binary(),
       'price' => integer(),
       'img' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'monthly_price' => integer(),
       'active' => binary(),
       'price_display' => binary(),
       'monthly_price_display' => binary()
     }.

encode(#{ 'id' := Id,
          'price' := Price,
          'img' := Img,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'monthly_price' := MonthlyPrice,
          'active' := Active,
          'price_display' := PriceDisplay,
          'monthly_price_display' := MonthlyPriceDisplay
        }) ->
    #{ 'id' => Id,
       'price' => Price,
       'img' => Img,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'monthly_price' => MonthlyPrice,
       'active' => Active,
       'price_display' => PriceDisplay,
       'monthly_price_display' => MonthlyPriceDisplay
     }.
