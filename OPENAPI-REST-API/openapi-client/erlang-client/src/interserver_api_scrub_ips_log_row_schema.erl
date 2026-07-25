-module(interserver_api_scrub_ips_log_row_schema).

-export([encode/1]).

-export_type([interserver_api_scrub_ips_log_row_schema/0]).

-type interserver_api_scrub_ips_log_row_schema() ::
    #{ 'date' => binary(),
       'filter' => binary(),
       'blocked_ip' => binary(),
       'target_ip' => binary(),
       'target_port' => integer(),
       'protocol' => binary(),
       'byte_count' => integer(),
       'xdp_action' => binary()
     }.

encode(#{ 'date' := Date,
          'filter' := Filter,
          'blocked_ip' := BlockedIp,
          'target_ip' := TargetIp,
          'target_port' := TargetPort,
          'protocol' := Protocol,
          'byte_count' := ByteCount,
          'xdp_action' := XdpAction
        }) ->
    #{ 'date' => Date,
       'filter' => Filter,
       'blocked_ip' => BlockedIp,
       'target_ip' => TargetIp,
       'target_port' => TargetPort,
       'protocol' => Protocol,
       'byte_count' => ByteCount,
       'xdp_action' => XdpAction
     }.
