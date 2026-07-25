-module(interserver_api_buy_it_now_server_order_200_response_cp_inner).

-export([encode/1]).

-export_type([interserver_api_buy_it_now_server_order_200_response_cp_inner/0]).

-type interserver_api_buy_it_now_server_order_200_response_cp_inner() ::
    #{ 'id' => binary(),
       'short_desc' => binary(),
       'long_desc' => binary(),
       'os_type' => binary(),
       'monthly_price' => binary()
     }.

encode(#{ 'id' := Id,
          'short_desc' := ShortDesc,
          'long_desc' := LongDesc,
          'os_type' := OsType,
          'monthly_price' := MonthlyPrice
        }) ->
    #{ 'id' => Id,
       'short_desc' => ShortDesc,
       'long_desc' => LongDesc,
       'os_type' => OsType,
       'monthly_price' => MonthlyPrice
     }.
