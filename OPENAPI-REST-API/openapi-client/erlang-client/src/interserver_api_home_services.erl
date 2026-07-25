-module(interserver_api_home_services).

-export([encode/1]).

-export_type([interserver_api_home_services/0]).

-type interserver_api_home_services() ::
    #{ 'domains' => interserver_api_home_services_domains:interserver_api_home_services_domains(),
       'webhosting' => interserver_api_home_services_webhosting:interserver_api_home_services_webhosting(),
       'vps' => interserver_api_home_services_vps:interserver_api_home_services_vps(),
       'licenses' => interserver_api_home_services_licenses:interserver_api_home_services_licenses(),
       'servers' => interserver_api_home_services_servers:interserver_api_home_services_servers(),
       'backups' => interserver_api_home_services_backups:interserver_api_home_services_backups()
     }.

encode(#{ 'domains' := Domains,
          'webhosting' := Webhosting,
          'vps' := Vps,
          'licenses' := Licenses,
          'servers' := Servers,
          'backups' := Backups
        }) ->
    #{ 'domains' => Domains,
       'webhosting' => Webhosting,
       'vps' => Vps,
       'licenses' => Licenses,
       'servers' => Servers,
       'backups' => Backups
     }.
