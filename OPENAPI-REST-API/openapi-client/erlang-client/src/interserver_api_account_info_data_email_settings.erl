-module(interserver_api_account_info_data_email_settings).

-export([encode/1]).

-export_type([interserver_api_account_info_data_email_settings/0]).

-type interserver_api_account_info_data_email_settings() ::
    #{ 'admin_cc_bad_response' => binary(),
       'admin_mass_communications_tpl' => binary()
     }.

encode(#{ 'admin_cc_bad_response' := AdminCcBadResponse,
          'admin_mass_communications_tpl' := AdminMassCommunicationsTpl
        }) ->
    #{ 'admin/cc_bad_response' => AdminCcBadResponse,
       'admin/mass_communications.tpl' => AdminMassCommunicationsTpl
     }.
