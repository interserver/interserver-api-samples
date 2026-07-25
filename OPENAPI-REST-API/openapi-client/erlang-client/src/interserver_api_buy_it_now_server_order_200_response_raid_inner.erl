-module(interserver_api_buy_it_now_server_order_200_response_raid_inner).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_server_order_200_response_raid_inner/0]).

-type interserver_api_buy_it_now_server_order_200_response_raid_inner() ::
    #{ 'id' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'monthly_price' => binary()
     }.

encode(#{ 'id' := Id,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'monthly_price' := MonthlyPrice
        }) ->
    #{ 'id' => Id,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'monthly_price' => MonthlyPrice
     }.
