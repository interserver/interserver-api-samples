-module(interserver_api_delete_mail_alert_request).

-export([encode/1]).

-export_type([interserver_api_delete_mail_alert_request/0]).

-type interserver_api_delete_mail_alert_request() ::
    #{ 'alert_id' := integer()
     }.

encode(#{ 'alert_id' := AlertId
        }) ->
    #{ 'alert_id' => AlertId
     }.
