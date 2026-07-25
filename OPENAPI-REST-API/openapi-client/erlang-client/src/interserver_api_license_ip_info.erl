-module(interserver_api_license_ip_info).

-export([encode/1]).

-export_type([interserver_api_license_ip_info/0]).

-type interserver_api_license_ip_info() ::
    #{ 'title' => binary(),
       'rows' => list()
     }.

encode(#{ 'title' := Title,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'rows' => Rows
     }.
