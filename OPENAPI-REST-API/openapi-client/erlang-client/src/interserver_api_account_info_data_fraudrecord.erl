-module(interserver_api_account_info_data_fraudrecord).

-export([encode/1]).

-export_type([interserver_api_account_info_data_fraudrecord/0]).

-type interserver_api_account_info_data_fraudrecord() ::
    #{ 'score' => binary(),
       'count' => binary(),
       'reliability' => binary(),
       'code' => binary()
     }.

encode(#{ 'score' := Score,
          'count' := Count,
          'reliability' := Reliability,
          'code' := Code
        }) ->
    #{ 'score' => Score,
       'count' => Count,
       'reliability' => Reliability,
       'code' => Code
     }.
