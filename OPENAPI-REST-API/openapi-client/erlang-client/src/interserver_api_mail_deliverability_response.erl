-module(interserver_api_mail_deliverability_response).

-export([encode/1]).

-export_type([interserver_api_mail_deliverability_response/0]).

-type interserver_api_mail_deliverability_response() ::
    #{ 'stat' => maps:map(),
       'percent' => integer(),
       'table_data' => list()
     }.

encode(#{ 'stat' := Stat,
          'percent' := Percent,
          'table_data' := TableData
        }) ->
    #{ 'stat' => Stat,
       'percent' => Percent,
       'table_data' => TableData
     }.
