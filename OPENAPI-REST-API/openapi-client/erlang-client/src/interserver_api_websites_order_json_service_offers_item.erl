-module(interserver_api_websites_order_json_service_offers_item).

-export([encode/1]).

-export_type([interserver_api_websites_order_json_service_offers_item/0]).

-type interserver_api_websites_order_json_service_offers_item() ::
    #{ 'service_offer_id' => binary(),
       'service_id' => binary(),
       'intro_cost' => integer(),
       'renewal_cost' => integer(),
       'intro_frequency' => binary(),
       'renewal_frequency' => binary(),
       'allow_coupon' => binary(),
       'service_module' => binary(),
       'created_at' => binary(),
       'updated_at' => binary(),
       'deleted_at' => binary(),
       'currencySymbol' => binary()
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
          'deleted_at' := DeletedAt,
          'currencySymbol' := CurrencySymbol
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
       'deleted_at' => DeletedAt,
       'currencySymbol' => CurrencySymbol
     }.
