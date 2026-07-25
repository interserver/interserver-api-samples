-module(interserver_api_place_scrub_order_201_response_order_details_cj_params).

-export([encode/1]).

-export_type([interserver_api_place_scrub_order_201_response_order_details_cj_params/0]).

-type interserver_api_place_scrub_order_201_response_order_details_cj_params() ::
    #{ 'containerTagId' => integer(),
       'CID' => integer(),
       'OID' => binary(),
       'TYPE' => integer(),
       'ITEM1' => binary(),
       'AMT1' => integer(),
       'QTY1' => integer(),
       'CURRENCY' => binary()
     }.

encode(#{ 'containerTagId' := ContainerTagId,
          'CID' := CID,
          'OID' := OID,
          'TYPE' := TYPE,
          'ITEM1' := ITEM1,
          'AMT1' := AMT1,
          'QTY1' := QTY1,
          'CURRENCY' := CURRENCY
        }) ->
    #{ 'containerTagId' => ContainerTagId,
       'CID' => CID,
       'OID' => OID,
       'TYPE' => TYPE,
       'ITEM1' => ITEM1,
       'AMT1' => AMT1,
       'QTY1' => QTY1,
       'CURRENCY' => CURRENCY
     }.
