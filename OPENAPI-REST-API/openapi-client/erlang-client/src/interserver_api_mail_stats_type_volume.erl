-module(interserver_api_mail_stats_type_volume).

-export([encode/1]).

-export_type([interserver_api_mail_stats_type_volume/0]).

-type interserver_api_mail_stats_type_volume() ::
    #{ 'to' => interserver_api_mail_stats_type_volume_to:interserver_api_mail_stats_type_volume_to(),
       'from' => interserver_api_mail_stats_type_volume_from:interserver_api_mail_stats_type_volume_from(),
       'ip' => interserver_api_mail_stats_type_volume_ip:interserver_api_mail_stats_type_volume_ip()
     }.

encode(#{ 'to' := To,
          'from' := From,
          'ip' := Ip
        }) ->
    #{ 'to' => To,
       'from' => From,
       'ip' => Ip
     }.
