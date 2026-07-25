-module(interserver_api_domain_order_request).

-export([encode/1]).

-export_type([interserver_api_domain_order_request/0]).

-type interserver_api_domain_order_request() ::
    #{ 'hostname' := binary(),
       'type' => binary(),
       'coupon' => binary(),
       'whois_privacy' => binary()
     }.

encode(#{ 'hostname' := Hostname,
          'type' := Type,
          'coupon' := Coupon,
          'whois_privacy' := WhoisPrivacy
        }) ->
    #{ 'hostname' => Hostname,
       'type' => Type,
       'coupon' => Coupon,
       'whois_privacy' => WhoisPrivacy
     }.
