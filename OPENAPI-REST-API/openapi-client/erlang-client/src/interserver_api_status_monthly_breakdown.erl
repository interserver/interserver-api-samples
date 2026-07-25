-module(interserver_api_status_monthly_breakdown).

-export([encode/1]).

-export_type([interserver_api_status_monthly_breakdown/0]).

-type interserver_api_status_monthly_breakdown() ::
    #{ 'default' := interserver_api_monthly_counts:interserver_api_monthly_counts(),
       'failed' := interserver_api_monthly_counts:interserver_api_monthly_counts(),
       'rejected' := interserver_api_monthly_counts:interserver_api_monthly_counts(),
       'pending' := interserver_api_monthly_counts:interserver_api_monthly_counts(),
       'locked' := interserver_api_monthly_counts:interserver_api_monthly_counts(),
       'paid' := interserver_api_monthly_counts:interserver_api_monthly_counts()
     }.

encode(#{ 'default' := Default,
          'failed' := Failed,
          'rejected' := Rejected,
          'pending' := Pending,
          'locked' := Locked,
          'paid' := Paid
        }) ->
    #{ 'default' => Default,
       'failed' => Failed,
       'rejected' => Rejected,
       'pending' => Pending,
       'locked' => Locked,
       'paid' => Paid
     }.
