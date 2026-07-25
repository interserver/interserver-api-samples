-module(interserver_api_backup_order_post_response_cj_params).

-export([encode/1]).

-export_type([interserver_api_backup_order_post_response_cj_params/0]).

-type interserver_api_backup_order_post_response_cj_params() ::
    #{ 'containerTagId' => binary(),
       'CID' => binary(),
       'OID' => binary(),
       'TYPE' => binary(),
       'ITEM1' => binary(),
       'AMT1' => binary(),
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
