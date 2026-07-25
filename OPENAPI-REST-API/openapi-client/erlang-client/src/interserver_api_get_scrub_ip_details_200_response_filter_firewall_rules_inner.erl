-module(interserver_api_get_scrub_ip_details_200_response_filter_firewall_rules_inner).

-export([encode/1]).

-export_type([interserver_api_get_scrub_ip_details_200_response_filter_firewall_rules_inner/0]).

-type interserver_api_get_scrub_ip_details_200_response_filter_firewall_rules_inner() ::
    #{ 'id' => binary(),
       'source_ip' => binary(),
       'destination_ip' => binary(),
       'protocol_id' => binary(),
       'source_port' => binary(),
       'destination_port' => binary(),
       'xdp_action' => binary(),
       'global_drop' => binary()
     }.

encode(#{ 'id' := Id,
          'source_ip' := SourceIp,
          'destination_ip' := DestinationIp,
          'protocol_id' := ProtocolId,
          'source_port' := SourcePort,
          'destination_port' := DestinationPort,
          'xdp_action' := XdpAction,
          'global_drop' := GlobalDrop
        }) ->
    #{ 'id' => Id,
       'source_ip' => SourceIp,
       'destination_ip' => DestinationIp,
       'protocol_id' => ProtocolId,
       'source_port' => SourcePort,
       'destination_port' => DestinationPort,
       'xdp_action' => XdpAction,
       'global_drop' => GlobalDrop
     }.
