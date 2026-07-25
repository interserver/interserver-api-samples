-module(interserver_api_home_details_modules_vps).

-export([encode/1]).

-export_type([interserver_api_home_details_modules_vps/0]).

-type interserver_api_home_details_modules_vps() ::
    #{ 'icon' => binary(),
       'view_link' => binary(),
       'heading' => binary(),
       'buy_link' => binary(),
       'list_link' => binary()
     }.

encode(#{ 'icon' := Icon,
          'view_link' := ViewLink,
          'heading' := Heading,
          'buy_link' := BuyLink,
          'list_link' := ListLink
        }) ->
    #{ 'icon' => Icon,
       'view_link' => ViewLink,
       'heading' => Heading,
       'buy_link' => BuyLink,
       'list_link' => ListLink
     }.
