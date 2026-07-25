-module(interserver_api_server_order_ip).

-export([encode/1]).

-export_type([interserver_api_server_order_ip/0]).

-type interserver_api_server_order_ip() ::
    #{ 'id' => binary(),
       'price' => integer(),
       'img' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'qty' => binary(),
       'monthly_price' => integer(),
       'price_display' => binary(),
       'monthly_price_display' => binary()
     }.

encode(#{ 'id' := Id,
          'price' := Price,
          'img' := Img,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'qty' := Qty,
          'monthly_price' := MonthlyPrice,
          'price_display' := PriceDisplay,
          'monthly_price_display' := MonthlyPriceDisplay
        }) ->
    #{ 'id' => Id,
       'price' => Price,
       'img' => Img,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'qty' => Qty,
       'monthly_price' => MonthlyPrice,
       'price_display' => PriceDisplay,
       'monthly_price_display' => MonthlyPriceDisplay
     }.
