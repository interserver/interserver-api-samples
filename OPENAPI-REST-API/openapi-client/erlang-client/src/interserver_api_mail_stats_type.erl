-module(interserver_api_mail_stats_type).

-export([encode/1]).

-export_type([interserver_api_mail_stats_type/0]).

-type interserver_api_mail_stats_type() ::
    #{ 'time' => binary(),
       'usage' => integer(),
       'currency' => binary(),
       'currencySymbol' => binary(),
       'cost' => float(),
       'received' => integer(),
       'sent' => integer(),
       'volume' => interserver_api_mail_stats_type_volume:interserver_api_mail_stats_type_volume()
     }.

encode(#{ 'time' := Time,
          'usage' := Usage,
          'currency' := Currency,
          'currencySymbol' := CurrencySymbol,
          'cost' := Cost,
          'received' := Received,
          'sent' := Sent,
          'volume' := Volume
        }) ->
    #{ 'time' => Time,
       'usage' => Usage,
       'currency' => Currency,
       'currencySymbol' => CurrencySymbol,
       'cost' => Cost,
       'received' => Received,
       'sent' => Sent,
       'volume' => Volume
     }.
