-module(interserver_api_affiliate_traffic_row).

-export([encode/1]).

-export_type([interserver_api_affiliate_traffic_row/0]).

-type interserver_api_affiliate_traffic_row() ::
    #{ 'traffic_id' => binary(),
       'traffic_ip' => binary(),
       'traffic_url' => binary(),
       'traffic_affiliate' => binary(),
       'traffic_referrer' => binary(),
       'traffic_timestamp' => binary()
     }.

encode(#{ 'traffic_id' := TrafficId,
          'traffic_ip' := TrafficIp,
          'traffic_url' := TrafficUrl,
          'traffic_affiliate' := TrafficAffiliate,
          'traffic_referrer' := TrafficReferrer,
          'traffic_timestamp' := TrafficTimestamp
        }) ->
    #{ 'traffic_id' => TrafficId,
       'traffic_ip' => TrafficIp,
       'traffic_url' => TrafficUrl,
       'traffic_affiliate' => TrafficAffiliate,
       'traffic_referrer' => TrafficReferrer,
       'traffic_timestamp' => TrafficTimestamp
     }.
