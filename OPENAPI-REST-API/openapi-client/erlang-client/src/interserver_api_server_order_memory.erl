-module(interserver_api_server_order_memory).

-export([encode/1]).

-export_type([interserver_api_server_order_memory/0]).

-type interserver_api_server_order_memory() ::
    #{ 'id' => binary(),
       'price' => binary(),
       'img' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'manu' => binary(),
       'size' => binary(),
       'type' => binary(),
       'hidden' => binary(),
       'monthly_price' => integer(),
       'drive_type' => binary(),
       'monthly_price_display' => binary()
     }.

encode(#{ 'id' := Id,
          'price' := Price,
          'img' := Img,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'manu' := Manu,
          'size' := Size,
          'type' := Type,
          'hidden' := Hidden,
          'monthly_price' := MonthlyPrice,
          'drive_type' := DriveType,
          'monthly_price_display' := MonthlyPriceDisplay
        }) ->
    #{ 'id' => Id,
       'price' => Price,
       'img' => Img,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'manu' => Manu,
       'size' => Size,
       'type' => Type,
       'hidden' => Hidden,
       'monthly_price' => MonthlyPrice,
       'drive_type' => DriveType,
       'monthly_price_display' => MonthlyPriceDisplay
     }.
