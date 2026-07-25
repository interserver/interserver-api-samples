-module(interserver_api_vps_service_addons).

-export([encode/1]).

-export_type([interserver_api_vps_service_addons/0]).

-type interserver_api_vps_service_addons() ::
    #{ 'has_cpanel' => boolean(),
       'has_directadmin' => boolean(),
       'has_fantastico' => boolean(),
       'has_softaculous' => boolean(),
       'has_hdspace' => boolean(),
       'dedicated_ip' => boolean(),
       'extra_ips' => list(),
       'extra_ips6' => list(),
       'unpaid_ips' => list(),
       'ips' => list(),
       'ips6' => list(),
       'cpanel_id' => integer(),
       'cost' => integer(),
       'ids' => list(),
       'rdata' => list()
     }.

encode(#{ 'has_cpanel' := HasCpanel,
          'has_directadmin' := HasDirectadmin,
          'has_fantastico' := HasFantastico,
          'has_softaculous' := HasSoftaculous,
          'has_hdspace' := HasHdspace,
          'dedicated_ip' := DedicatedIp,
          'extra_ips' := ExtraIps,
          'extra_ips6' := ExtraIps6,
          'unpaid_ips' := UnpaidIps,
          'ips' := Ips,
          'ips6' := Ips6,
          'cpanel_id' := CpanelId,
          'cost' := Cost,
          'ids' := Ids,
          'rdata' := Rdata
        }) ->
    #{ 'has_cpanel' => HasCpanel,
       'has_directadmin' => HasDirectadmin,
       'has_fantastico' => HasFantastico,
       'has_softaculous' => HasSoftaculous,
       'has_hdspace' => HasHdspace,
       'dedicated_ip' => DedicatedIp,
       'extra_ips' => ExtraIps,
       'extra_ips6' => ExtraIps6,
       'unpaid_ips' => UnpaidIps,
       'ips' => Ips,
       'ips6' => Ips6,
       'cpanel_id' => CpanelId,
       'cost' => Cost,
       'ids' => Ids,
       'rdata' => Rdata
     }.
