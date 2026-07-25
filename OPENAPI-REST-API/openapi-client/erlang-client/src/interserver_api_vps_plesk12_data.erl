-module(interserver_api_vps_plesk12_data).

-export([encode/1]).

-export_type([interserver_api_vps_plesk12_data/0]).

-type interserver_api_vps_plesk12_data() ::
    #{ 'admin' => interserver_api_vps_plesk_license:interserver_api_vps_plesk_license(),
       'pro' => interserver_api_vps_plesk_license:interserver_api_vps_plesk_license(),
       'host' => interserver_api_vps_plesk_license:interserver_api_vps_plesk_license()
     }.

encode(#{ 'admin' := Admin,
          'pro' := Pro,
          'host' := Host
        }) ->
    #{ 'admin' => Admin,
       'pro' => Pro,
       'host' => Host
     }.
