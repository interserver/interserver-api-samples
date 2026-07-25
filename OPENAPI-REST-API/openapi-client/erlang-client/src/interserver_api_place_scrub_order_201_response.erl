-module(interserver_api_place_scrub_order_201_response).

-export([encode/1]).

-export_type([interserver_api_place_scrub_order_201_response/0]).

-type interserver_api_place_scrub_order_201_response() ::
    #{ 'success' => boolean(),
       'text' => binary(),
       'order_details' => interserver_api_place_scrub_order_201_response_order_details:interserver_api_place_scrub_order_201_response_order_details()
     }.

encode(#{ 'success' := Success,
          'text' := Text,
          'order_details' := OrderDetails
        }) ->
    #{ 'success' => Success,
       'text' => Text,
       'order_details' => OrderDetails
     }.
