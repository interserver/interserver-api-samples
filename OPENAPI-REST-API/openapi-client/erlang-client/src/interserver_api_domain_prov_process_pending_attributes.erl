-module(interserver_api_domain_prov_process_pending_attributes).

-export([encode/1]).

-export_type([interserver_api_domain_prov_process_pending_attributes/0]).

-type interserver_api_domain_prov_process_pending_attributes() ::
    #{ 'id' => binary(),
       'order_id' => binary(),
       'registration_expiration_date' => binary(),
       'f_auto_renew' => binary()
     }.

encode(#{ 'id' := Id,
          'order_id' := OrderId,
          'registration_expiration_date' := RegistrationExpirationDate,
          'f_auto_renew' := FAutoRenew
        }) ->
    #{ 'id' => Id,
       'order_id' => OrderId,
       'registration expiration date' => RegistrationExpirationDate,
       'f_auto_renew' => FAutoRenew
     }.
