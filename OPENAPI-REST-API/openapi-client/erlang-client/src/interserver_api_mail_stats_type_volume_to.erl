-module(interserver_api_mail_stats_type_volume_to).

-export([encode/1]).

-export_type([interserver_api_mail_stats_type_volume_to/0]).

-type interserver_api_mail_stats_type_volume_to() ::
    #{ 'clientdomain_com' => integer(),
       'usersite_net' => integer(),
       'salescompany_com' => integer(),
       'clientanothersite_com' => integer()
     }.

encode(#{ 'clientdomain_com' := ClientdomainCom,
          'usersite_net' := UsersiteNet,
          'salescompany_com' := SalescompanyCom,
          'clientanothersite_com' := ClientanothersiteCom
        }) ->
    #{ 'client@domain.com' => ClientdomainCom,
       'user@site.net' => UsersiteNet,
       'sales@company.com' => SalescompanyCom,
       'client@anothersite.com' => ClientanothersiteCom
     }.
