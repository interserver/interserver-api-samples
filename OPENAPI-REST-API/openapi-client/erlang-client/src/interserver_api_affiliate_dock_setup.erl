-module(interserver_api_affiliate_dock_setup).

-export([encode/1]).

-export_type([interserver_api_affiliate_dock_setup/0]).

-type interserver_api_affiliate_dock_setup() ::
    #{ 'affiliate_dock_title' => binary(),
       'affiliate_dock_description' => binary(),
       'referrer_coupon' => binary()
     }.

encode(#{ 'affiliate_dock_title' := AffiliateDockTitle,
          'affiliate_dock_description' := AffiliateDockDescription,
          'referrer_coupon' := ReferrerCoupon
        }) ->
    #{ 'affiliate_dock_title' => AffiliateDockTitle,
       'affiliate_dock_description' => AffiliateDockDescription,
       'referrer_coupon' => ReferrerCoupon
     }.
