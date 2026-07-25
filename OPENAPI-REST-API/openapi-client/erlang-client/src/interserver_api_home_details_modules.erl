-module(interserver_api_home_details_modules).

-export([encode/1]).

-export_type([interserver_api_home_details_modules/0]).

-type interserver_api_home_details_modules() ::
    #{ 'domains' => interserver_api_home_details_modules_domains:interserver_api_home_details_modules_domains(),
       'webhosting' => interserver_api_home_details_modules_webhosting:interserver_api_home_details_modules_webhosting(),
       'vps' => interserver_api_home_details_modules_vps:interserver_api_home_details_modules_vps(),
       'licenses' => interserver_api_home_details_modules_licenses:interserver_api_home_details_modules_licenses(),
       'backups' => interserver_api_home_details_modules_backups:interserver_api_home_details_modules_backups(),
       'servers' => interserver_api_home_details_modules_servers:interserver_api_home_details_modules_servers(),
       'quickservers' => interserver_api_home_details_modules_quickservers:interserver_api_home_details_modules_quickservers()
     }.

encode(#{ 'domains' := Domains,
          'webhosting' := Webhosting,
          'vps' := Vps,
          'licenses' := Licenses,
          'backups' := Backups,
          'servers' := Servers,
          'quickservers' := Quickservers
        }) ->
    #{ 'domains' => Domains,
       'webhosting' => Webhosting,
       'vps' => Vps,
       'licenses' => Licenses,
       'backups' => Backups,
       'servers' => Servers,
       'quickservers' => Quickservers
     }.
