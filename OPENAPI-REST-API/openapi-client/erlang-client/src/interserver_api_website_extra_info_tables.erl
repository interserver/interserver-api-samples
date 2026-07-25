-module(interserver_api_website_extra_info_tables).

-export([encode/1]).

-export_type([interserver_api_website_extra_info_tables/0]).

-type interserver_api_website_extra_info_tables() ::
    #{ 'links' => interserver_api_website_table:interserver_api_website_table(),
       'preview' => interserver_api_website_table:interserver_api_website_table(),
       'dns' => interserver_api_website_table:interserver_api_website_table()
     }.

encode(#{ 'links' := Links,
          'preview' := Preview,
          'dns' := Dns
        }) ->
    #{ 'links' => Links,
       'preview' => Preview,
       'dns' => Dns
     }.
