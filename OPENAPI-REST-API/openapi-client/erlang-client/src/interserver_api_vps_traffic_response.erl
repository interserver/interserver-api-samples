-module(interserver_api_vps_traffic_response).

-export([encode/1]).

-export_type([interserver_api_vps_traffic_response/0]).

-type interserver_api_vps_traffic_response() ::
    #{ 'name' := binary(),
       'target' := binary(),
       'interval' := integer(),
       'history' := interserver_api_vps_traffic_history_response:interserver_api_vps_traffic_history_response(),
       'last' := interserver_api_date_time:interserver_api_date_time(),
       'times' := list(),
       'totals' := interserver_api_vps_traffic_totals_resposne:interserver_api_vps_traffic_totals_resposne(),
       'usage' := interserver_api_vps_traffic_usage_response:interserver_api_vps_traffic_usage_response(),
       'data' := list()
     }.

encode(#{ 'name' := Name,
          'target' := Target,
          'interval' := Interval,
          'history' := History,
          'last' := Last,
          'times' := Times,
          'totals' := Totals,
          'usage' := Usage,
          'data' := Data
        }) ->
    #{ 'name' => Name,
       'target' => Target,
       'interval' => Interval,
       'history' => History,
       'last' => Last,
       'times' => Times,
       'totals' => Totals,
       'usage' => Usage,
       'data' => Data
     }.
