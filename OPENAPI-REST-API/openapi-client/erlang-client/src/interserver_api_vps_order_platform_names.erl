-module(interserver_api_vps_order_platform_names).

-export([encode/1]).

-export_type([interserver_api_vps_order_platform_names/0]).

-type interserver_api_vps_order_platform_names() ::
    #{ 'kvm' => binary(),
       'kvmstorage' => binary(),
       'hyperv' => binary()
     }.

encode(#{ 'kvm' := Kvm,
          'kvmstorage' := Kvmstorage,
          'hyperv' := Hyperv
        }) ->
    #{ 'kvm' => Kvm,
       'kvmstorage' => Kvmstorage,
       'hyperv' => Hyperv
     }.
