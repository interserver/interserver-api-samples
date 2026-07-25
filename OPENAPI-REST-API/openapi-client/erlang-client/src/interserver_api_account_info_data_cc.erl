-module(interserver_api_account_info_data_cc).

-export([encode/1]).

-export_type([interserver_api_account_info_data_cc/0]).

-type interserver_api_account_info_data_cc() ::
    #{ 'cc' => binary(),
       'cc_exp' => binary(),
       'name' => binary(),
       'address' => binary(),
       'city' => binary(),
       'state' => binary(),
       'zip' => binary(),
       'country' => binary(),
       'maxmind_riskscore' => binary(),
       'maxmind' => interserver_api_account_info_max_mind_response:interserver_api_account_info_max_mind_response(),
       'verified' => boolean()
     }.

encode(#{ 'cc' := Cc,
          'cc_exp' := CcExp,
          'name' := Name,
          'address' := Address,
          'city' := City,
          'state' := State,
          'zip' := Zip,
          'country' := Country,
          'maxmind_riskscore' := MaxmindRiskscore,
          'maxmind' := Maxmind,
          'verified' := Verified
        }) ->
    #{ 'cc' => Cc,
       'cc_exp' => CcExp,
       'name' => Name,
       'address' => Address,
       'city' => City,
       'state' => State,
       'zip' => Zip,
       'country' => Country,
       'maxmind_riskscore' => MaxmindRiskscore,
       'maxmind' => Maxmind,
       'verified' => Verified
     }.
