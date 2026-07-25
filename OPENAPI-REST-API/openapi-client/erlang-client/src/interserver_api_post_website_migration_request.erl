-module(interserver_api_post_website_migration_request).

-export([encode/1]).

-export_type([interserver_api_post_website_migration_request/0]).

-type interserver_api_post_website_migration_request() ::
    #{ 'custPortal' => binary(),
       'regEmail' => binary(),
       'password' => binary(),
       'ctrlPanel' => binary(),
       'ftpUsername' => binary(),
       'ftpPassword' => binary(),
       'siteBusyMig' => binary(),
       'splReqMig' => binary(),
       'domainReg' => binary(),
       'dataMig' => binary(),
       'domainRegPortal' => binary(),
       'domainRegEmail' => binary(),
       'domainRegPassword' => binary()
     }.

encode(#{ 'custPortal' := CustPortal,
          'regEmail' := RegEmail,
          'password' := Password,
          'ctrlPanel' := CtrlPanel,
          'ftpUsername' := FtpUsername,
          'ftpPassword' := FtpPassword,
          'siteBusyMig' := SiteBusyMig,
          'splReqMig' := SplReqMig,
          'domainReg' := DomainReg,
          'dataMig' := DataMig,
          'domainRegPortal' := DomainRegPortal,
          'domainRegEmail' := DomainRegEmail,
          'domainRegPassword' := DomainRegPassword
        }) ->
    #{ 'custPortal' => CustPortal,
       'regEmail' => RegEmail,
       'password' => Password,
       'ctrlPanel' => CtrlPanel,
       'ftpUsername' => FtpUsername,
       'ftpPassword' => FtpPassword,
       'siteBusyMig' => SiteBusyMig,
       'splReqMig' => SplReqMig,
       'domainReg' => DomainReg,
       'dataMig' => DataMig,
       'domainRegPortal' => DomainRegPortal,
       'domainRegEmail' => DomainRegEmail,
       'domainRegPassword' => DomainRegPassword
     }.
