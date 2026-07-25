-module(interserver_api_module_settings).

-export([encode/1]).

-export_type([interserver_api_module_settings/0]).

-type interserver_api_module_settings() ::
    #{ 'SERVICE_ID_OFFSET' := integer(),
       'USE_REPEAT_INVOICE' := boolean(),
       'USE_PACKAGES' := boolean(),
       'BILLING_DAYS_OFFSET' := integer(),
       'IMGNAME' := binary(),
       'REPEAT_BILLING_METHOD' := integer(),
       'DELETE_PENDING_DAYS' := integer(),
       'SUSPEND_DAYS' := integer(),
       'SUSPEND_WARNING_DAYS' := integer(),
       'TITLE' := binary(),
       'MENUNAME' := binary(),
       'EMAIL_FROM' := binary(),
       'TBLNAME' := binary(),
       'TABLE' := binary(),
       'TITLE_FIELD' := binary(),
       'PREFIX' := binary(),
       'TITLE_FIELD2' => binary(),
       'TITLE_FIELD3' => binary()
     }.

encode(#{ 'SERVICE_ID_OFFSET' := SERVICEIDOFFSET,
          'USE_REPEAT_INVOICE' := USEREPEATINVOICE,
          'USE_PACKAGES' := USEPACKAGES,
          'BILLING_DAYS_OFFSET' := BILLINGDAYSOFFSET,
          'IMGNAME' := IMGNAME,
          'REPEAT_BILLING_METHOD' := REPEATBILLINGMETHOD,
          'DELETE_PENDING_DAYS' := DELETEPENDINGDAYS,
          'SUSPEND_DAYS' := SUSPENDDAYS,
          'SUSPEND_WARNING_DAYS' := SUSPENDWARNINGDAYS,
          'TITLE' := TITLE,
          'MENUNAME' := MENUNAME,
          'EMAIL_FROM' := EMAILFROM,
          'TBLNAME' := TBLNAME,
          'TABLE' := TABLE,
          'TITLE_FIELD' := TITLEFIELD,
          'PREFIX' := PREFIX,
          'TITLE_FIELD2' := TITLEFIELD2,
          'TITLE_FIELD3' := TITLEFIELD3
        }) ->
    #{ 'SERVICE_ID_OFFSET' => SERVICEIDOFFSET,
       'USE_REPEAT_INVOICE' => USEREPEATINVOICE,
       'USE_PACKAGES' => USEPACKAGES,
       'BILLING_DAYS_OFFSET' => BILLINGDAYSOFFSET,
       'IMGNAME' => IMGNAME,
       'REPEAT_BILLING_METHOD' => REPEATBILLINGMETHOD,
       'DELETE_PENDING_DAYS' => DELETEPENDINGDAYS,
       'SUSPEND_DAYS' => SUSPENDDAYS,
       'SUSPEND_WARNING_DAYS' => SUSPENDWARNINGDAYS,
       'TITLE' => TITLE,
       'MENUNAME' => MENUNAME,
       'EMAIL_FROM' => EMAILFROM,
       'TBLNAME' => TBLNAME,
       'TABLE' => TABLE,
       'TITLE_FIELD' => TITLEFIELD,
       'PREFIX' => PREFIX,
       'TITLE_FIELD2' => TITLEFIELD2,
       'TITLE_FIELD3' => TITLEFIELD3
     }.
