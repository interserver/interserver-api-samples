-module(interserver_api_quickserver_row).

-export([encode/1]).

-export_type([interserver_api_quickserver_row/0]).

-type interserver_api_quickserver_row() ::
    #{ 'qs_id' := binary(),
       'qs_name' := binary(),
       'cost' := binary(),
       'qs_hostname' := binary(),
       'qs_status' := binary(),
       'qs_comment' := binary()
     }.

encode(#{ 'qs_id' := QsId,
          'qs_name' := QsName,
          'cost' := Cost,
          'qs_hostname' := QsHostname,
          'qs_status' := QsStatus,
          'qs_comment' := QsComment
        }) ->
    #{ 'qs_id' => QsId,
       'qs_name' => QsName,
       'cost' => Cost,
       'qs_hostname' => QsHostname,
       'qs_status' => QsStatus,
       'qs_comment' => QsComment
     }.
