-module(interserver_api_mail_alert_update_request).

-export([encode/1]).

-export_type([interserver_api_mail_alert_update_request/0]).

-type interserver_api_mail_alert_update_request() ::
    #{ 'alert_id' => integer(),
       'type' => binary(),
       'value' => binary(),
       'to' => binary(),
       'enabled' => binary()
     }.

encode(#{ 'alert_id' := AlertId,
          'type' := Type,
          'value' := Value,
          'to' := To,
          'enabled' := Enabled
        }) ->
    #{ 'alert_id' => AlertId,
       'type' => Type,
       'value' => Value,
       'to' => To,
       'enabled' => Enabled
     }.
