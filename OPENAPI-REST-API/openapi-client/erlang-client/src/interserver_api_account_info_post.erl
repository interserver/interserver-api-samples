-module(interserver_api_account_info_post).

-export([encode/1]).

-export_type([interserver_api_account_info_post/0]).

-type interserver_api_account_info_post() ::
    #{ 'name' := binary(),
       'address' := binary(),
       'city' := binary(),
       'state' := binary(),
       'zip' := binary(),
       'country' := binary(),
       'phone' := binary(),
       'company' => binary(),
       'address2' => binary(),
       'locale' => binary(),
       'email_invoices' => binary(),
       'email_abuse' => binary(),
       'disable_reset' => boolean(),
       'disable_reinstall' => boolean(),
       'disable_server_notifications' => boolean(),
       'disable_email_notifications' => boolean(),
       'gstin' => binary()
     }.

encode(#{ 'name' := Name,
          'address' := Address,
          'city' := City,
          'state' := State,
          'zip' := Zip,
          'country' := Country,
          'phone' := Phone,
          'company' := Company,
          'address2' := Address2,
          'locale' := Locale,
          'email_invoices' := EmailInvoices,
          'email_abuse' := EmailAbuse,
          'disable_reset' := DisableReset,
          'disable_reinstall' := DisableReinstall,
          'disable_server_notifications' := DisableServerNotifications,
          'disable_email_notifications' := DisableEmailNotifications,
          'gstin' := Gstin
        }) ->
    #{ 'name' => Name,
       'address' => Address,
       'city' => City,
       'state' => State,
       'zip' => Zip,
       'country' => Country,
       'phone' => Phone,
       'company' => Company,
       'address2' => Address2,
       'locale' => Locale,
       'email_invoices' => EmailInvoices,
       'email_abuse' => EmailAbuse,
       'disable_reset' => DisableReset,
       'disable_reinstall' => DisableReinstall,
       'disable_server_notifications' => DisableServerNotifications,
       'disable_email_notifications' => DisableEmailNotifications,
       'gstin' => Gstin
     }.
