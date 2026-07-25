-module(interserver_api_mail_stats_type_volume_ip).

-export([encode/1]).

-export_type([interserver_api_mail_stats_type_volume_ip/0]).

-type interserver_api_mail_stats_type_volume_ip() ::
    #{ '1_1_1_1' => integer(),
       '2_2_2_2' => integer(),
       '3_3_3_3' => integer(),
       '4_4_4_4' => integer()
     }.

encode(#{ '1_1_1_1' := 1111,
          '2_2_2_2' := 2222,
          '3_3_3_3' := 3333,
          '4_4_4_4' := 4444
        }) ->
    #{ '1.1.1.1' => 1111,
       '2.2.2.2' => 2222,
       '3.3.3.3' => 3333,
       '4.4.4.4' => 4444
     }.
