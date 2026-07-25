-module(interserver_api_websites_order_service_offer).

-export([encode/1]).

-export_type([interserver_api_websites_order_service_offer/0]).

-type interserver_api_websites_order_service_offer() ::
    #{ 'service_offer_id' := binary(),
       'service_id' := binary(),
       'intro_cost' := binary(),
       'renewal_cost' := binary(),
       'intro_frequency' := binary(),
       'renewal_frequency' := binary(),
       'allow_coupon' := binary(),
       'service_module' := binary(),
       'created_at' := binary(),
       'updated_at' => binary(),
       'deleted_at' => binary()
     }.

encode(#{ 'service_offer_id' := ServiceOfferId,
          'service_id' := ServiceId,
          'intro_cost' := IntroCost,
          'renewal_cost' := RenewalCost,
          'intro_frequency' := IntroFrequency,
          'renewal_frequency' := RenewalFrequency,
          'allow_coupon' := AllowCoupon,
          'service_module' := ServiceModule,
          'created_at' := CreatedAt,
          'updated_at' := UpdatedAt,
          'deleted_at' := DeletedAt
        }) ->
    #{ 'service_offer_id' => ServiceOfferId,
       'service_id' => ServiceId,
       'intro_cost' => IntroCost,
       'renewal_cost' => RenewalCost,
       'intro_frequency' => IntroFrequency,
       'renewal_frequency' => RenewalFrequency,
       'allow_coupon' => AllowCoupon,
       'service_module' => ServiceModule,
       'created_at' => CreatedAt,
       'updated_at' => UpdatedAt,
       'deleted_at' => DeletedAt
     }.
