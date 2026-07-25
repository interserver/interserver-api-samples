-module(interserver_api_mail_schema_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_mail_schema_extra_info_tables/0]).

-type interserver_api_mail_schema_extra_info_tables() ::
    #{ 'mail' => interserver_api_mail_extra_info_table:interserver_api_mail_extra_info_table(),
       'tutorials' => interserver_api_mail_tutorials_table:interserver_api_mail_tutorials_table()
     }.

encode(#{ 'mail' := Mail,
          'tutorials' := Tutorials
        }) ->
    #{ 'mail' => Mail,
       'tutorials' => Tutorials
     }.
