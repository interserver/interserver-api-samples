-module(interserver_api_server_order).

-export([encode/1]).

-export_type([interserver_api_server_order/0]).

-type interserver_api_server_order() ::
    #{ 'form_values' => interserver_api_server_order_form_values:interserver_api_server_order_form_values(),
       'config_ids' => interserver_api_server_order_config_ids:interserver_api_server_order_config_ids(),
       'cpu' => integer(),
       'field_label' => interserver_api_server_order_field_labels:interserver_api_server_order_field_labels(),
       'cpu_li' => interserver_api_server_order_cpu_li:interserver_api_server_order_cpu_li(),
       'memory_li' => interserver_api_server_order_memory_li:interserver_api_server_order_memory_li(),
       'bandwidth_li' => interserver_api_server_order_bandwidth_li:interserver_api_server_order_bandwidth_li(),
       'ips_li' => interserver_api_server_order_ips_li:interserver_api_server_order_ips_li(),
       'os_li' => interserver_api_server_order_os_li:interserver_api_server_order_os_li(),
       'cp_li' => interserver_api_server_order_cp_li:interserver_api_server_order_cp_li(),
       'raid_li' => list()
     }.

encode(#{ 'form_values' := FormValues,
          'config_ids' := ConfigIds,
          'cpu' := Cpu,
          'field_label' := FieldLabel,
          'cpu_li' := CpuLi,
          'memory_li' := MemoryLi,
          'bandwidth_li' := BandwidthLi,
          'ips_li' := IpsLi,
          'os_li' := OsLi,
          'cp_li' := CpLi,
          'raid_li' := RaidLi
        }) ->
    #{ 'form_values' => FormValues,
       'config_ids' => ConfigIds,
       'cpu' => Cpu,
       'field_label' => FieldLabel,
       'cpu_li' => CpuLi,
       'memory_li' => MemoryLi,
       'bandwidth_li' => BandwidthLi,
       'ips_li' => IpsLi,
       'os_li' => OsLi,
       'cp_li' => CpLi,
       'raid_li' => RaidLi
     }.
