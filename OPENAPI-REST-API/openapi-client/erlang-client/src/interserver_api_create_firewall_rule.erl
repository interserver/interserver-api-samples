-module(interserver_api_create_firewall_rule).

-export([encode/1]).

-export_type([interserver_api_create_firewall_rule/0]).

-type interserver_api_create_firewall_rule() ::
    #{ 'destination_port' => integer(),
       'source_ip' => binary(),
       'source_port' => integer(),
       'protocol_id' := integer(),
       'xdp_action' := integer()
     }.

encode(#{ 'destination_port' := DestinationPort,
          'source_ip' := SourceIp,
          'source_port' := SourcePort,
          'protocol_id' := ProtocolId,
          'xdp_action' := XdpAction
        }) ->
    #{ 'destination_port' => DestinationPort,
       'source_ip' => SourceIp,
       'source_port' => SourcePort,
       'protocol_id' => ProtocolId,
       'xdp_action' => XdpAction
     }.
