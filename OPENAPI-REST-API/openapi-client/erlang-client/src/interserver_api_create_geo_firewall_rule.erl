-module(interserver_api_create_geo_firewall_rule).

-export([encode/1]).

-export_type([interserver_api_create_geo_firewall_rule/0]).

-type interserver_api_create_geo_firewall_rule() ::
    #{ 'destination_port' => integer(),
       'country_code' => integer(),
       'asn' => integer(),
       'xdp_action' := integer()
     }.

encode(#{ 'destination_port' := DestinationPort,
          'country_code' := CountryCode,
          'asn' := Asn,
          'xdp_action' := XdpAction
        }) ->
    #{ 'destination_port' => DestinationPort,
       'country_code' => CountryCode,
       'asn' => Asn,
       'xdp_action' => XdpAction
     }.
