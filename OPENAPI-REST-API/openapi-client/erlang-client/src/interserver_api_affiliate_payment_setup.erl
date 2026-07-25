-module(interserver_api_affiliate_payment_setup).

-export([encode/1]).

-export_type([interserver_api_affiliate_payment_setup/0]).

-type interserver_api_affiliate_payment_setup() ::
    #{ 'affiliate_paypal' => binary(),
       'affiliate_payment_method' => binary()
     }.

encode(#{ 'affiliate_paypal' := AffiliatePaypal,
          'affiliate_payment_method' := AffiliatePaymentMethod
        }) ->
    #{ 'affiliate_paypal' => AffiliatePaypal,
       'affiliate_payment_method' => AffiliatePaymentMethod
     }.
