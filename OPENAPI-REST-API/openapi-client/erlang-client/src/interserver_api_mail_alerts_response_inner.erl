-module(interserver_api_mail_alerts_response_inner).

-export([encode/1]).

-export_type([interserver_api_mail_alerts_response_inner/0]).

-type interserver_api_mail_alerts_response_inner() ::
    #{ 'alert_id' => integer(),
       'alert_type' => binary(),
       'alert_value' => binary(),
       'alert_to' => binary(),
       'alert_enabled' => binary()
     }.

encode(#{ 'alert_id' := AlertId,
          'alert_type' := AlertType,
          'alert_value' := AlertValue,
          'alert_to' := AlertTo,
          'alert_enabled' := AlertEnabled
        }) ->
    #{ 'alert_id' => AlertId,
       'alert_type' => AlertType,
       'alert_value' => AlertValue,
       'alert_to' => AlertTo,
       'alert_enabled' => AlertEnabled
     }.
