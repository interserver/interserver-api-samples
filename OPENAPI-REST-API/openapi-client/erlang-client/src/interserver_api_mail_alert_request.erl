-module(interserver_api_mail_alert_request).

-export([encode/1]).

-export_type([interserver_api_mail_alert_request/0]).

-type interserver_api_mail_alert_request() ::
    #{ 'type' => binary(),
       'value' => binary(),
       'to' => binary(),
       'enabled' => binary()
     }.

encode(#{ 'type' := Type,
          'value' := Value,
          'to' := To,
          'enabled' := Enabled
        }) ->
    #{ 'type' => Type,
       'value' => Value,
       'to' => To,
       'enabled' => Enabled
     }.
